//
//  Router.swift
//  VIPER
//
//  Created by Islam omer on 6/22/22.

import Foundation
import UIKit

// Helps naviagate routes on application
// Object
// Entry point for module

typealias EntryPoint = AnyView & UIViewController

protocol AnyRouter {
    var entry: EntryPoint?
    static func start() -> AnyRouter
}

class UserRouter: AnyRouter {
    var entry: EntryPoint?
    
    static func start() -> AnyRouter {
        let router = UserRouter()
        
        // Assign VIP (View, Interactor, Presenter)
        var view: AnyView = UserViewController()
        var presenter: AnyPresenter = UserPresenter()
        var interactor: AnyInteractor = UserInteractor()
        
        view.presenter = presenter
        
        interactor.presenter = presenter
        
        presenter.router = router
        presenter.view = view
        presenter.interactor = interactor
        
        router.entry = view as? EntryPoint
        
        return router
    }
}
