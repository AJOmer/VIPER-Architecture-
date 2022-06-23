//
//  Interactor.swift
//  VIPER
//
//  Created by Islam omer on 6/22/22.
//

import Foundation

// Object
// Requires a protocol
// reference to presenter

// Best place to make API calls


protocol AnyInteractor {
    //ref to presenter
    var presenter: AnyPresenter? { get set }
    
    func getUsers()
}

class UserInteractor: AnyInteractor {
    var presenter: AnyPresenter?
    
    func getUsers() {
        <#code#>
    }
    
    
}
