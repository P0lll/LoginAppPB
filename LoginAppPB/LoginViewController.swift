//
//  ViewController.swift
//  LoginAppPB
//
//  Created by Admin on 01/04/2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
   
    @IBOutlet var userName: UITextField!
    @IBOutlet var userPassword: UITextField!
    
    @IBOutlet var loginButton: UIButton!
    
    @IBOutlet weak var forgotUserNameButton: UIButton!
    @IBOutlet weak var forgotUserPassword: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        loginButton.layer.cornerRadius = 15
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let logout = segue.destination as? WelcomeViewController  else { return }
        logout.welcomeText = userName.text
    }
    
    func showAlert(withTitle title: String, andMessege message: String) {
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func forgotUserPasswordTap() {
        showAlert(withTitle: "Вы забыли Password",
                  andMessege: "Password: pas"
        )
    }
    
    @IBAction func forgotUserNameTap() {
        showAlert(withTitle: "Вы забыли User Name",
                  andMessege: "User Name: user"
        )
    }
    
    @IBAction func getAccessTap() {
        guard let inputText = userName.text, !inputText.isEmpty else {
            showAlert(withTitle: "Введите значения",
                      andMessege: "Введите данные в поле User Name или Password"
            )
            return
        }
        
        if userName.text != "user" || userPassword.text != "pas" {
            showAlert(withTitle: "Ошибка",
                      andMessege: "Неверный логин или пароль"
            )
        }
    }
}





