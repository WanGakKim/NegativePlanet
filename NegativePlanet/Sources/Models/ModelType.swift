//
//  ModelType.swift
//  NegativePlanet
//
//  Created by Wangak Kim on 2021/03/06.
//  Copyright © 2021 Wangak Kim. All rights reserved.
//
	
protocol  Identifiable {
    associatedtype Identifier: Equatable
    var id: Identifier {get}
}
