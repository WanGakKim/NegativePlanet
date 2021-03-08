//
//  UserDefaultsKey.swift
//  NegativePlanet
//
//  Created by Wangak Kim on 2021/03/06.
//  Copyright © 2021 Wangak Kim. All rights reserved.
//
	

struct UserDefaultsKey<T> {
    typealias Key<T> = UserDefaultsKey<T>
    let key: String
}

extension UserDefaultsKey: ExpressibleByNilLiteral {
    init(nilLiteral: ()) {
        // do something
        self.init(key: "empty Value")
    }
    
    public init(unicodeSclarLiteral value: StringLiteralType) {
        self.init(key: value)
    }
    
    public init(extendedGraphemeClusterLiteral value: StringLiteralType) {
        self.init(key: value)
    }
    
    public init(stringLiteral value: StringLiteralType) {
        self.init(key: value)
    }
}
