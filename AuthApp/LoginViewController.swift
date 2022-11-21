//
//  ViewController.swift
//  AuthApp
//
//  Created by Максим Евграфов on 14.11.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let userName = "Root"
    private let password = "123456"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = userName
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    @IBAction func loginTapped() {
        if userNameTextField.text == userName && passwordTextField.text == password {
            performSegue(withIdentifier: "goWelcomeVC", sender: nil)
        } else {
            let alert = UIAlertController(
                title:"Invalid auth!",
                message: "Please, check your login and password",
                preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "Ok", style: .default)
            alert.addAction(alertAction)
            present(alert, animated: true)
            
            passwordTextField.text = ""
        }
    }
    
    @IBAction func forgotUserNameTapped() {
        let alert = UIAlertController(
            title:"Oops!",
            message: "Root",
            preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(alertAction)
        present(alert, animated: true)
    }
    
    @IBAction func forgotPasswordTapped() {
        let alert = UIAlertController(
            title:"Oops!",
            message: "123456",
            preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(alertAction)
        present(alert, animated: true)
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
}

