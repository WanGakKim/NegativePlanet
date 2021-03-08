//
//  BaseTableViewCell.swift
//  NegativePlanet
//
//  Created by Wangak Kim on 2021/03/06.
//  Copyright © 2021 Wangak Kim. All rights reserved.
//
	

import UIKit
import RxSwift

class BaseTableViewCell: UITableViewCell {
    
    // MARK: Properties
    
    var disposBag: DisposeBag = DisposeBag()
    
    // MARK: Initalizing
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.initalize()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initalize(){
        //Override point
    }
    
    
}
