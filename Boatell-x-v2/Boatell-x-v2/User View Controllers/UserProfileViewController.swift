//
//  UserProfileViewController.swift
//  Boatell-x-v2
//
//  Created by Austin Potts on 3/26/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class UserProfileViewController: UIViewController {
    
    
    // Table View
    @IBOutlet weak var historyTableView: UITableView!
    
    // User Values
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var boatTypeLabel: UILabel!
    @IBOutlet weak var userImage: UIImageView!
    
    @IBOutlet weak var editProfile: UIButton!
    @IBOutlet weak var logOutButton: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        userImage.layer.cornerRadius = 20
        editProfile.layer.cornerRadius = 20
        logOutButton.layer.cornerRadius = 20
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
