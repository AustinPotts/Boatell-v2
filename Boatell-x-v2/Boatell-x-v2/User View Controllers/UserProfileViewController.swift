//
//  UserProfileViewController.swift
//  Boatell-x-v2
//
//  Created by Austin Potts on 3/26/20.
//  Copyright © 2020 Potts Evolvements. All rights reserved.
//

import UIKit

class UserProfileViewController: UIViewController  {
    
    
    // Table View

    
    // User Values
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
   
    @IBOutlet weak var userImage: UIImageView!
    
   
    
    // UIViews for User Options
    @IBOutlet weak var scheduleView: UIView!
    @IBOutlet weak var serviceView: UIView!
    @IBOutlet weak var yourBoatsView: UIView!
    @IBOutlet weak var settingsView: UIView!
    
    // Model Controller
    let serviceController = ServiceController()
    


    override func viewDidLoad() {
        super.viewDidLoad()

         // User Views v1
        userImage.layer.cornerRadius = 82
        
        // UIViews for User Options v2
        scheduleView.layer.cornerRadius = 20
        serviceView.layer.cornerRadius = 20
        yourBoatsView.layer.cornerRadius = 20
        settingsView.layer.cornerRadius = 20
        
        // Shadows for UIViews
        scheduleView.layer.shadowColor = UIColor.white.cgColor
        scheduleView.layer.shadowOpacity = 0.5
        scheduleView.layer.shadowOffset = .zero
        scheduleView.layer.shadowRadius = 10
    
        yourBoatsView.layer.shadowColor = UIColor.white.cgColor
        yourBoatsView.layer.shadowOpacity = 0.5
        yourBoatsView.layer.shadowOffset = .zero
        yourBoatsView.layer.shadowRadius = 10
        
        settingsView.layer.shadowColor = UIColor.white.cgColor
        settingsView.layer.shadowOpacity = 0.5
        settingsView.layer.shadowOffset = .zero
        settingsView.layer.shadowRadius = 10
        
        serviceView.layer.shadowColor = UIColor.white.cgColor
        serviceView.layer.shadowOpacity = 0.5
        serviceView.layer.shadowOffset = .zero
        serviceView.layer.shadowRadius = 10
        
        // Borders for UIViews
        scheduleView.layer.borderWidth = 1
        scheduleView.layer.borderColor = UIColor.blue.cgColor
        
        serviceView.layer.borderWidth = 1
        serviceView.layer.borderColor = UIColor.blue.cgColor
        
        settingsView.layer.borderWidth = 1
        settingsView.layer.borderColor = UIColor.blue.cgColor
        
        yourBoatsView.layer.borderWidth = 1
        yourBoatsView.layer.borderColor = UIColor.blue.cgColor
        
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    //MARK: Old Table View for v1 of user layout
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return serviceController.service.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = historyTableView.dequeueReusableCell(withIdentifier: "ServiceCell", for: indexPath) as! ServiceHistoryTableViewCell
//
//               // Configure the cell
//              // let part = partController.part[indexPath.item]
//        let service = serviceController.service[indexPath.row]
//
//        cell.servicePriceLabel.text = service.price
//        cell.serviceDateLabel.text = service.date
//
//
//
//               return cell
//    }
    

}

