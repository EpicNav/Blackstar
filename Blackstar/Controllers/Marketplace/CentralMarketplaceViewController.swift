//
//  CentralMarketplaceViewController.swift
//  Blackstar
//
//  Created by EpicNav on 2022-04-13.
//

import UIKit

class CentralMarketplaceViewController: UIViewController {

    
    @IBOutlet weak var marketplaceTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.marketplaceTable.delegate = self
        self.marketplaceTable.dataSource = self
        
        self.marketplaceTable.sectionHeaderHeight = UITableView.automaticDimension
        
        self.marketplaceTable.register(UINib(nibName: "MarketplaceTableViewHeader", bundle: nil), forHeaderFooterViewReuseIdentifier: "MarketplaceTableViewHeader")
        // Do any additional setup after loading the view.
        
        if #available(iOS 15.0, *) {
            marketplaceTable.sectionHeaderTopPadding = 0
        }
        
    }

}

extension CentralMarketplaceViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if !marketplaceSections[section].bIsExpanded {
            return 0
        }
        
        return marketplaceSections[section].subCategories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = marketplaceTable.dequeueReusableCell(withIdentifier: "marketplaceCategoryCell", for: indexPath) as! MarketplaceTableViewCell
        
        cell.itemName.text = Array(marketplaceSections[indexPath.section].subCategories)[indexPath.row].value.name
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return marketplaceSections.count
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "MarketplaceTableViewHeader") as? MarketplaceHeaderView
        headerView?.title.text = marketplaceSections[section].name
        
        let tapRecognizer = HeaderGesture(target: self, action: #selector(self.tapped))
        headerView?.addGestureRecognizer(tapRecognizer)
        tapRecognizer.view?.tag = section
        tapRecognizer.header = headerView!
        
        return headerView
    }
    
    @objc func tapped(sender : HeaderGesture) {
        let section = sender.view!.tag
        
        var indexPaths = [IndexPath]()
        
        for row in Array(marketplaceSections[section].subCategories.sorted(by: {return ($0.key as NSString).integerValue < ($1.key as NSString).integerValue})).indices {
            let indexPath = IndexPath(row: row, section: section)
            indexPaths.append(indexPath)
        }
        
        /*UIView.transition(with: sender.header.angleIndicator, duration: 0.3, options: .curveEaseInOut, animations: {
            sender.header.angleIndicator.image = marketplaceSections[section].bIsExpanded ? UIImage(systemName: "chevron.right") : UIImage(systemName: "chevron.down")
        }, completion: nil)*/
        sender.header.angleIndicator.transform = CGAffineTransform(scaleX: 0, y: 0)
        UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0, options: .curveEaseOut, animations: {
            sender.header.angleIndicator.image = marketplaceSections[section].bIsExpanded ? UIImage(systemName: "chevron.right") : UIImage(systemName: "chevron.down")
            sender.header.angleIndicator.transform = .identity
        }, completion: nil)
        
        let bIsExpanded = marketplaceSections[section].bIsExpanded
        marketplaceSections[section].bIsExpanded = !bIsExpanded
        
        if bIsExpanded {
            marketplaceTable.deleteRows(at: indexPaths, with: .fade)
        } else {
            marketplaceTable.insertRows(at: indexPaths, with: .fade)
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        performSegue(withIdentifier: "ItemsListCentralMarketSegue", sender: self)
    }
}

class HeaderGesture : UITapGestureRecognizer {
    var header = MarketplaceHeaderView()
}

extension Bundle {
    func decode<T: Decodable>(
        _ type: T.Type,
        from file: String,
        dateDecodingStrategy: JSONDecoder.DateDecodingStrategy = .deferredToDate,
        keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy = .useDefaultKeys
    ) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }

        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle")
        }

        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = dateDecodingStrategy
        decoder.keyDecodingStrategy = keyDecodingStrategy

        // swiftlint:disable line_length
        do {
            return try decoder.decode(T.self, from: data)
        } catch DecodingError.keyNotFound(let key, let context) {
            fatalError("Failed to decode \(file) from bundle due to missing key '\(key.stringValue)' - \(context.debugDescription)")
        } catch DecodingError.typeMismatch(_, let context) {
            fatalError("Failed to decode \(file) from bundle due to type mismatch - \(context.debugDescription)")
        } catch DecodingError.valueNotFound(let type, let context) {
            fatalError("Failed to decode \(file) from bundle due to missing \(type) value = \(context.debugDescription)")
        } catch DecodingError.dataCorrupted(_) {
            fatalError("Failed to decode \(file) from bundle because it appears to be invalid JSON.")
        } catch {
            fatalError("Failed to decode \(file) from bundle: \(error.localizedDescription)")
        }
    }
}
