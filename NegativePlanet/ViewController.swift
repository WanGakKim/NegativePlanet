//
//  ViewController.swift
//  NegativePlanet
//
//  Created by Gak_ee on 2021/01/27.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var _view : UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
    }


}
//
//public enum DeviceGroup {
//   case fourInches
//   case fiveInches
//   case xSeries
//   case iPads
//   public var rawValue: [Device] {
//      switch self {
//      case .fourInches:
//         return [.iPhone5s, .iPhoneSE]
//      case .fiveInches:
//         return [.iPhone6, .iPhone6s, .iPhone7, .iPhone8]
//      case .xSeries:
//         return Device.allXSeriesDevices
//      case .iPads:
//         return Device.allPads
//      }
//   }
//}
//class DeviceManager {
//   static let shared: DeviceManager = DeviceManager()
//   func isFourIncheDevices() -> Bool {
//      return Device.current.isOneOf(DeviceGroup.fourInches.rawValue)
//   }
//   func isIPadDevices() -> Bool {
//      return Device.current.isOneOf(DeviceGroup.iPads.rawValue)
//   }
//}
