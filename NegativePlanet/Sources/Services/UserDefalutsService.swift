//
//  UserDefalutsService.swift
//  NegativePlanet
//
//  Created by Wangak Kim on 2021/03/06.
//  Copyright © 2021 Wangak Kim. All rights reserved.
//
	

import Foundation

extension UserDefaultsKey {
//    static var t: Key<String> {return .init(key: "ss")}
}

protocol UserDefaultsServiceType {
  func value<T>(forKey key: UserDefaultsKey<T>) -> T?
  func set<T>(value: T?, forKey key: UserDefaultsKey<T>)
}

final class UserDefaultsService: BaseService, UserDefaultsServiceType {

  private var defaults: UserDefaults {
    return UserDefaults.standard
  }

  func value<T>(forKey key: UserDefaultsKey<T>) -> T? {
    return self.defaults.value(forKey: key.key) as? T
  }

  func set<T>(value: T?, forKey key: UserDefaultsKey<T>) {
    self.defaults.set(value, forKey: key.key)
    self.defaults.synchronize()
  }

}
