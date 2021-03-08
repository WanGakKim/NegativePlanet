//
//  ServiceProvider.swift
//  NegativePlanet
//
//  Created by Wangak Kim on 2021/03/06.
//  Copyright © 2021 Wangak Kim. All rights reserved.
//
	

import Foundation

protocol ServiceProviderType: class {
    var userDefaultService: UserDefaultsServiceType{ get }
}

final class ServiceProvider:
    ServiceProviderType {
    lazy var userDefaultService: UserDefaultsServiceType = UserDefaultsService(provider: self)
}
