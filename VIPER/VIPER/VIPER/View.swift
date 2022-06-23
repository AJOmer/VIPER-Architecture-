//
//  View.swift
//  VIPER
//
//  Created by Islam omer on 6/22/22.
//

import Foundation
import UIKit

// View responsible as User interface
// protocol implemented here
// references the presenter

protocol AnyView {
    var presenter: AnyPresenter? { get set }
    
    // collection of users
    func update(with users: [User])
    // string of error on view controller
    func updat(with error: String)
}

class UserViewController: UIViewController, AnyView, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    var presenter: AnyPresenter?
    
    private let tableView: UITableView = {
        let table = UITableView()
        table.register(UITableView.self, forCellReuseIdentifier: "cell")
        table.isHidden = true
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
    }
    func update(with users: [User]) {
        <#code#>
    }
    
    func updat(with error: String) {
        <#code#>
    }
    
    // Table
}
