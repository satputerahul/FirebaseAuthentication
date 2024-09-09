//
//  ViewController.swift
//  FirebaseAuthentication
//
//  Created by Samir Raut on 09/09/24.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {

    
    @IBOutlet var txtEml: UITextField!
    @IBOutlet var txtPswd: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func btnLogin(_ sender: UIButton) {
        
        guard let email = txtEml.text, !email.isEmpty,
                  let password = txtPswd.text, !password.isEmpty else {
                // Show an alert to the user
                showAlert(title: "Error", message: "Please enter both email and password.")
                return
            }
        
        Auth.auth().signIn(withEmail: email, password: password) { verResult, error in
            if let error = error {
                // Handle error
                self.showAlert(title: "Sign In Failed", message: error.localizedDescription)
            } else {
                // Sign-up successful
                self.showAlert(title: "Success", message: "Your account has been Verified successfully.")
            }
        }
        
    }
    
    @IBAction func btnSignUp(_ sender: UIButton) {
        
        guard let email = txtEml.text, !email.isEmpty,
                  let password = txtPswd.text, !password.isEmpty else {
                // Show an alert to the user
                showAlert(title: "Error", message: "Please enter both email and password.")
                return
            }
            
            // Firebase sign-up
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let error = error {
                    // Handle error
                    self.showAlert(title: "Sign Up Failed", message: error.localizedDescription)
                } else {
                    // Sign-up successful
                    self.showAlert(title: "Success", message: "Your account has been created successfully.")
                }
            }
        
    }
    
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }

}

