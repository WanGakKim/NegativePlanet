//
//  BaseModel.swift
//  NegativePlanet
//
//  Created by Wangak Kim on 2021/03/08.
//  Copyright © 2021 Wangak Kim. All rights reserved.
//

import Then
//@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
//public protocol Identifiable {
//
//    /// A type representing the stable identity of the entity associated with
//    /// an instance.
//    associatedtype ID : Hashable
//
//    /// The stable identity of the entity associated with this instance.
//    var id: Self.ID { get }
//}
//
//@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
//extension Identifiable where Self : AnyObject {
//
//    /// The stable identity of the entity associated with this instance.
//    public var id: ObjectIdentifier { get }
//}

protocol Identifiable {
    associatedtype ID: Equatable, Hashable
    var id: Self.ID{ get }
}

protocol BaseModel: Then {
}


extension Collection where Self.Iterator.Element: Identifiable {
    func index(of element: Self.Iterator.Element) -> Self.Index?{
        return self.index{ $0.id == element.id }
    }
}
