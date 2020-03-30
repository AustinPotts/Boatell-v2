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
        userImage.layer.cornerRadius = 80
        

       
        
      
        // UIViews for User Options v2
        scheduleView.layer.cornerRadius = 20
        serviceView.layer.cornerRadius = 20
        yourBoatsView.layer.cornerRadius = 20
        settingsView.layer.cornerRadius = 20
        
        
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

