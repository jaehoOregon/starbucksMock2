//
//  segFirstView.swift
//  starbucksMock2
//
//  Created by Jaeho Jung on 2022/11/13.
//

import UIKit

class segFirstView: UIViewController {

    @IBOutlet weak var menuViewContainer: UIView!
    
    var menuDrink: UIView!
    var menuFood: UIView!
    var menuGoods: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuDrink = segFirstViewMenuDrink().view
        menuFood = segFirstViewMenuFood().view
        menuGoods = segFirsstViewMenuGoods().view
        
        menuViewContainer.addSubview(menuDrink)
        menuViewContainer.addSubview(menuFood)
        menuViewContainer.addSubview(menuGoods)

    }

    // MARK: - Navigation
    @IBAction func switchMenu(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            menuViewContainer.bringSubviewToFront(menuDrink)
        case 1:
            menuViewContainer.bringSubviewToFront(menuFood)
        case 2:
            menuViewContainer.bringSubviewToFront(menuGoods)
        default:
            break
        }
        
    }
    
}


