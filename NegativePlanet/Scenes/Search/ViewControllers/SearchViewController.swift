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


class SearchViewController : UIViewController, View{
    
    @IBOutlet weak var cleanButton:     UIButton!
    
    
    @IBOutlet weak var categoryDetailButton:    UIButton!
    
    // MARK: Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: Binding Properties
    let reactor = SearchViewReactor()
    var disposeBag = DisposeBag()
    
    // MARK: Configures
    func configureUI(){
        
    }
    
    // MARK: Helpers
    func bind(reactor: SearchViewReactor){
        
        cleanButton.rx.tap
            .map {
                Reactor.Action.cleanKeywords
            }
            .bind(to: reactor.action)
            .disposed(by: rx.disposeBag)
    }
    
    
}

final class SearchViewReactor: Reactor{
    
    // MARK: Actions
    enum Action {
        // Keywords Search Actions
        case cleanKeywords
        
        // category Actions
        case updateCategory
        case updateRecommandedKeywords
        
        // Scene
        case showDetail
    }
    
    // MARK: State
    struct State {
        var keyword: String = ""
        var recommandedKeywords: [NPKeyword] = []
        var categorys: [NPCategory] = []
    }
    
    // MARK: Mutations
    enum Mutation {
        
        case cleanKeyword
        
        case updateCategory
        case updateRecommandedKeywords
        
        case showDetail
    }
    
    
    
    let initialState: State
     
    init() {
        self.initialState = State(recommandedKeywords: [], categorys: [])
    }
    
    // MARK: Action -> Mutation
    // returns Observable Objects
    func mutate(action: Action) -> Observable<Mutation> {
        switch action {
        case .cleanKeywords:
            return Observable.just(Mutation.cleanKeyword)
        case .showDetail:
            return Observable.just(Mutation.showDetail)
        case .updateCategory:
            return Observable.just(Mutation.updateCategory)
        case .updateRecommandedKeywords:
            return Observable.just(Mutation.updateRecommandedKeywords)
        }
    }
    
    func reduce(state: State, mutation: Mutation) -> State {
        var state = state
        switch mutation {
        case .cleanKeyword:
            break
        default:
            break
        }
        return state
    }
}

struct NPKeyword {
    var keywordNo: Int
    var keyword: String
}

struct NPCategory{
    
}
