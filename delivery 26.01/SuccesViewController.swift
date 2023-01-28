//
//  SuccesViewController.swift
//  Lungo project
//
//  Created by mac on 18/01/23.
//

import UIKit

class SuccesViewController: UIViewController {
    let label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        label.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -10).isActive = true
        label.text = "You have successfully registered"
        label.textColor = .green
        label.font = .systemFont(ofSize: 30)
        label.numberOfLines = 0
        label.textAlignment = .center

    }
    


}
