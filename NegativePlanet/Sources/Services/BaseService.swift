//
//  BaseService.swift
//  NegativePlanet
//
//  Created by Wangak Kim on 2021/03/08.
//  Copyright © 2021 Wangak Kim. All rights reserved.
//
	

import Foundation

class BaseService {
    unowned let provider: ServiceProviderType
    
    init(provider: ServiceProviderType) {
        self.provider = provider
    }
}
