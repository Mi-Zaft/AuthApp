//
//  WelcomeViewController.swift
//  AuthApp
//
//  Created by Максим Евграфов on 21.11.2022.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(userName)"
    }
}
