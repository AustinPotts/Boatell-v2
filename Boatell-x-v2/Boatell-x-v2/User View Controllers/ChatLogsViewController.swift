//
//  ChatLogsViewController.swift
//  Boatell-x-v2
//
//  Created by Austin Potts on 4/5/20.
//  Copyright © 2020 Potts Evolvements. All rights reserved.
//

import UIKit
import Firebase

class ChatLogsViewController: UIViewController {

    
    @IBOutlet var messageTextField: UITextField!
    
    
    @IBOutlet var messagesCollectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

  
    
    
    @IBAction func sendTapped(_ sender: Any) {
        handleSend()
    }
    
    func handleSend() {
        
        //guard let message = messageTextField.text else {return}
        
        let ref = Database.database().reference().child("messages")
        let values = ["text": messageTextField.text!]
        ref.updateChildValues(values)
        
    }
    
}

//
//extension ChatLogsViewController: UICollectionViewDelegate, UICollectionViewDataSource {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        <#code#>
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        <#code#>
//    }
//
//
//}
