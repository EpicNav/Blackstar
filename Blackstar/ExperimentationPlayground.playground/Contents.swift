import UIKit

let mpInit = MarketplaceCategoriesDecoder.init()

print(String(describing: mpInit.marketplaceCategories["1"]!.bIsExpanded))
