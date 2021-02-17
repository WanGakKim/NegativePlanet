//
//  HomeViewController.swift
//  NegativePlanet
//
//  Created by Gak_ee on 2021/01/27.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var _view : UIView!
    @IBOutlet weak var collectionView : UICollectionView!
    @IBOutlet weak var concernView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        initUI()
    }
    func initUI(){
        var gradientLayer : CAGradientLayer = .init()
        gradientLayer.frame = self.concernView.bounds
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.colors = [UIColor.init(red: 61/255, green: 111/255, blue: 233/255, alpha: 1).cgColor,UIColor.init(red: 98/255, green: 139/255, blue: 224/255, alpha: 1).cgColor]
        self.concernView.layer.cornerRadius = 14
        self.concernView.layer.addSublayer(gradientLayer)
        
    }
}
extension HomeViewController : UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoriesCollectionViewCell", for: indexPath) as! CategoriesCollectionViewCell
        switch indexPath.row {
        case 0:
            cell.planetImageView.image = UIImage(imageLiteralResourceName: "MaritalPlanet")
            cell.planetTitleLabel.text = "결혼"
            break
        case 1:
            cell.planetImageView.image = UIImage(imageLiteralResourceName: "EmploymentPlanet")
            cell.planetTitleLabel.text = "취업준비"
            break
        case 2:
            cell.planetImageView.image = UIImage(imageLiteralResourceName: "HumanRelationShip")
            cell.planetTitleLabel.text = "인간관계"
            break
//        case 3:
//            break
//        case 4:
//            break
        default:
            break
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
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


//Favorite Categories
class CategoriesCollectionViewCell: UICollectionViewCell{
    @IBOutlet weak var planetImageView: UIImageView!
    @IBOutlet weak var planetTitleLabel: UILabel!
    
}
