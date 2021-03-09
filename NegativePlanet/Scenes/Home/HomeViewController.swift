//
//  HomeViewController.swift
//  NegativePlanet
//
//  Created by Wangak Kim on 2021/03/09.
//  Copyright © 2021 Wangak Kim. All rights reserved.
//
	
import UIKit

import RxSwift
import ReactorKit

final class HomeViewController: BaseViewController, View {
    typealias Reactor = HomeViewReactor
    
    //MARK: Constants
    
    struct Metric {
        
    }
    
    struct Font {
        
    }
    
    struct Color {
        
    }
    
    init(reactor: HomeViewReactor) {
        super.init()
        self.reactor = reactor
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func bind(reactor: HomeViewReactor) {
        
    }
    
}


final class HomeViewReactor: Reactor {
    enum Action {
        
    }
    
    enum Mutation {
        
    }
    
    struct State{
        
        init() {
            
        }
    }
    
    let provider: ServiceProviderType
    let initialState: State
    
    init(provider: ServiceProviderType) {
        self.provider = provider
        initialState = State()
    }
    
//    func mutate(action: Action) -> Observable<Mutation> {
        
//    }
    
//    func reduce(state: State, mutation: Mutation) -> State {
//        var state = state
//    }
}
