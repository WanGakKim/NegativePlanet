//
//  UserDefaultsKey.swift
//  NegativePlanet
//
//  Created by Wangak Kim on 2021/03/08.
//  Copyright © 2021 Wangak Kim. All rights reserved.
//

typealias Key<T> = UserDefaultsKey<T>
struct UserDefaultsKey<T> {
  let key: String
}

extension UserDefaultsKey: ExpressibleByStringLiteral {
    
  public init(unicodeScalarLiteral value: StringLiteralType) {
    self.init(key: value)
  }

  public init(extendedGraphemeClusterLiteral value: StringLiteralType) {
    self.init(key: value)
  }

  public init(stringLiteral value: StringLiteralType) {
    self.init(key: value)
  }
}
