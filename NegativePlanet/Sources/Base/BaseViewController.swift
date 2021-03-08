//
//  BaseViewController.swift
//  NegativePlanet
//
//  Created by Gak_ee on 2021/03/04.
//


//
//  TaskListViewController.swift
//  RxTodo
//
//  Created by Suyeol Jeon on 7/1/16.
//  Copyright © 2016 Suyeol Jeon. All rights reserved.
//

import UIKit

import RxSwift

class BaseViewController: UIViewController {
    
    //MARK: Initalizaing
    
    init(){
        super.init(nibName: nil, bundle: nil)
    }
    
    required convenience init?(coder aDecoder: NSCoder){
        self.init()
    }
    
    //MARK: Rx
    
    var disposeBag = DisposeBag()
    
    //MARK: Layout Constraints
    
    private(set) var didSetupConstraints = false
    
    override func viewDidLoad() {
        self.view.setNeedsUpdateConstraints()
    }
    
    override func updateViewConstraints() {
        if !self.didSetupConstraints {
            self.setupConstraints()
            self.didSetupConstraints = true
        }
        super.updateViewConstraints()
    }
    
    func setupConstraints() {
      // Override point
    }
}
