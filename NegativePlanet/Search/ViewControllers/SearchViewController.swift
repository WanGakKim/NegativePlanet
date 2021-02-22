//
//  SearchViewController.swift
//  NegativePlanet
//
//  Created by WanGakKim on 2021/02/22.
//  
//


import Foundation
import UIKit
import RxSwift
import RxCocoa
import ReactorKit
import RxKeyboard
import NSObject_Rx

class SearchViewController : UIViewController{
    
    @IBOutlet weak var cleanButton:     UIButton!
    
    
    @IBOutlet weak var categoryDetailButton:    UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

final class SearchViewReactor: Reactor{
    enum Action {
        // Keywords Search Action...
        case cleanKeywords
        
        case updateCategory
        case updateRecommandedKeywords
        
        // Scene
        case showDetail
    }
    
    enum Mutation {
        case cleanTextField
        
        case updateCategory
        case updateRecommandedKeywords
        
        case showDetail
    }
    
    struct State {
        var recommandedKeywords: [NPKeyword] = []
        var categorys: [NPCategory] = []
    }
    
    let initialState: State = State()
    
    func mutate(action: Action) -> Observable<Mutation> {
        switch action {
        case .cleanKeywords:
            return Observable.just(Mutation.cleanTextField)
        case .showDetail:
            return Observable.just(Mutation.showDetail)
        case .updateCategory:
            return Observable.just(Mutation.updateCategory)
        case .updateRecommandedKeywords:
            return Observable.just(Mutation.updateRecommandedKeywords)
        }
    }
}

struct NPKeyword {
    var keywordNo: Int
    var keyword: String
}

struct NPCategory{
    
}
