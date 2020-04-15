//
//  LoginViewController.swift
//  Boatell-x-v2
//
//  Created by Austin Potts on 3/6/20.
//  Copyright © 2020 Potts Evolvements. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
//        var ref: DatabaseReference!
//
//        ref = Database.database().reference(fromURL: "https://boatell-v2.firebaseio.com/")
//        ref.updateChildValues(["some value": 123123])
        
       loginButton.layer.cornerRadius = 20
    }
    
    func handleLogIn() {
        
        guard let email = emailTextField.text, let password = passwordTextField.text else { return }
        
        Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
            if let error = error {
                // MARK: - TODO Add Notification to user that the login failed
                print("Error signing in: \(error)")
                return
            }
            
            self.performSegue(withIdentifier: "LogInSegue", sender: self)
        }
        
    }

    @IBAction func loginTapped(_ sender: Any) {
        handleLogIn()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
