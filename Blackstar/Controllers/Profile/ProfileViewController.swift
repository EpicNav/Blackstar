//
//  ProfileViewController.swift
//  Blackstar
//
//  Created by EpicNav on 2022-04-15.
//

import UIKit
import Firebase

class ProfileViewController: UIViewController {

    @IBOutlet weak var userEmail: UILabel!
    @IBOutlet weak var uuid: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        userEmail.text = Auth.auth().currentUser?.email
        uuid.text = Auth.auth().currentUser?.uid
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        get {
            return .portrait
        }
    }

}
