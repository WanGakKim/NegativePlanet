//
//  ServiceProvider.swift
//  NegativePlanet
//
//  Created by Wangak Kim on 2021/03/08.
//  Copyright © 2021 Wangak Kim. All rights reserved.
//
	

protocol ServiceProviderType: class {
  var userDefaultsService: UserDefaultsServiceType { get }
}

final class ServiceProvider: ServiceProviderType {
  lazy var userDefaultsService: UserDefaultsServiceType = UserDefaultsService(provider: self)
}
