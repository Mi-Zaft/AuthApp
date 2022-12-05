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
    
    let userName = ""
    
    let maximUser = User.user
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameLabel.text = userName
        nameLabel.text = maximUser.name
        surnameLabel.text = maximUser.surname
        ageLabel.text = String(maximUser.age)
        githubAccountLabel.text = maximUser.githubAccount
        emailLabel.text = maximUser.email
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let skillsVC = segue.destination as? SkillsViewController else { return }
        skillsVC.skills = User.user.skills
    }
}
