//
//  orderVC.swift
//  starbucksMock2
//
//  Created by Jaeho Jung on 2022/11/13.
//

import UIKit

class orderVC: UIViewController {

    @IBOutlet weak var segViewContainer: UIView!
    
    var segMenu: UIView!
    var segMyMenu: UIView!
    var segHallCakeReservation: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        segMenu = segFirstView().view
        segMyMenu = segSecondView().view
        segHallCakeReservation = segThirdView().view
        
        
        segViewContainer.addSubview(segMenu)
        segViewContainer.addSubview(segMyMenu)
        segViewContainer.addSubview(segHallCakeReservation)
        
    }
    
    // MARK: - segmentSwitch
    @IBAction func segSwitch(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            segViewContainer.bringSubviewToFront(segMenu)
        case 1:
            segViewContainer.bringSubviewToFront(segMyMenu)
        case 2:
            segViewContainer.bringSubviewToFront(segHallCakeReservation)
        default:
            break
        }
    }
    
    // MARK: - segmentSwitch

    
}
