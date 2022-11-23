//
//  ViewController.swift
//  AuthApp
//
//  Created by Максим Евграфов on 14.11.2022.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let userMaxim = User(userName: "Root", password: "123456")
    
    override func viewDidLoad() {
        registerKeyboardNotification()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = userMaxim.userName
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func loginTapped() {
        if userNameTextField.text == userMaxim.userName &&
            passwordTextField.text == userMaxim.password {
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

extension LoginViewController {
    private func registerKeyboardNotification() {
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(keyboardWillShow),
                                               name: UIResponder.keyboardWillShowNotification,
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(keyboardWillHide),
                                               name: UIResponder.keyboardWillHideNotification,
                                               object: nil)
    }
    
    @objc private func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey]
                               as? NSValue)?.cgRectValue {
            if view.frame.origin.y == 0 {
                view.frame.origin.y -= keyboardSize.height - 200
            }
        }
    }
    
    @objc private func keyboardWillHide(notification: NSNotification) {
        if view.frame.origin.y != 0 {
            view.frame.origin.y = 0
        }
    }
}
