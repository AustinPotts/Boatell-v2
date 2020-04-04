//
//  RegisterProfileViewController.swift
//  Boatell-x-v2
//
//  Created by Austin Potts on 3/26/20.
//  Copyright © 2020 Potts Evolvements. All rights reserved.
//

import UIKit
import Firebase

class RegisterProfileViewController: UIViewController {
    
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        signUpButton.layer.cornerRadius = 20
    }
    
   
    @IBAction func signUpTapped(_ sender: Any) {
        handleRegister()
    }
    
    func handleRegister() {
        
        guard let email = emailTextField.text, let password = passwordTextField.text, let name = usernameTextField.text else { return }
        
        Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
            if let error = error {
                print("Error: \(error)")
                return
            }
            
            // Successfully Registered Value
            var ref: DatabaseReference!
            
            ref = Database.database().reference(fromURL: "https://boatell-v2.firebaseio.com/")
            
            let userRef = ref.child("users")
            
            let values = ["name": name, "email": email]
            
            userRef.updateChildValues(values) { (error, refer) in
                if let error = error {
                    print("error child values: \(error)")
                    return
                }
                
                print("Saved user successfully into firebase db")
            }
            
        }
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
