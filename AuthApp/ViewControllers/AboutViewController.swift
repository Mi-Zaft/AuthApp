//
//  AboutViewController.swift
//  AuthApp
//
//  Created by Максим Евграфов on 24.11.2022.
//

import UIKit

final class AboutViewController: UIViewController {

    @IBOutlet var userNameLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var githubAccountLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    let maxim = Person(
        name: "Maxim",
        surname: "Evgrafov",
        age: 26,
        githubAccount: "https://github.com/Mi-Zaft",
        email: "mi.zaft1@gmail.com"
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameLabel.text = root.userName
        nameLabel.text = maxim.name
        surnameLabel.text = maxim.surname
        ageLabel.text = String(maxim.age)
        githubAccountLabel.text = maxim.githubAccount
        emailLabel.text = maxim.email
    }
}
