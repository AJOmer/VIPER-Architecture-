//
//  Presenter.swift
//  VIPER
//
//  Created by Islam omer on 6/22/22.
//

import Foundation

// Object
// Protocol
// references interactor, router, and view. Central part of application is Presenter

protocol AnyPresenter {
    // creating ref for VIR
    var router: AnyRouter? { get set }
    var interactor: AnyInteractor? { get set }
    var view: AnyView? { get set }
    
    // if successful, returns array of users
    func interactorDidFetchUsers(with result: Result<[User], Error>)
}

class UserPresenter: AnyPresenter {
    var router: AnyRouter?
    
    var interactor: AnyInteractor?
    
    var view: AnyView?
    
    func interactorDidFetchUsers(with result: Result<[User], Error>){
        
    }
    
}
