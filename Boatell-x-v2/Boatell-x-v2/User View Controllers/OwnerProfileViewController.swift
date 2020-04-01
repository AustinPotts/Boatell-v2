//
//  OwnerProfileViewController.swift
//  Boatell-x-v2
//
//  Created by Austin Potts on 4/1/20.
//  Copyright © 2020 Potts Evolvements. All rights reserved.
//

import UIKit

class OwnerProfileViewController: UIViewController {

    @IBOutlet var ownerImage: UIImageView!
    @IBOutlet var appointmentsView: UIView!
    @IBOutlet var contactsView: UIView!
    @IBOutlet var inventoryView: UIView!
    @IBOutlet var revenueView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


            ownerImage.layer.cornerRadius = 85
            
            // UIViews for User Options v2
            appointmentsView.layer.cornerRadius = 20
            contactsView.layer.cornerRadius = 20
            inventoryView.layer.cornerRadius = 20
            revenueView.layer.cornerRadius = 20
            
            // Shadows for UIViews
            appointmentsView.layer.shadowColor = UIColor.white.cgColor
            appointmentsView.layer.shadowOpacity = 0.5
            appointmentsView.layer.shadowOffset = .zero
            appointmentsView.layer.shadowRadius = 10
        
            contactsView.layer.shadowColor = UIColor.white.cgColor
            contactsView.layer.shadowOpacity = 0.5
            contactsView.layer.shadowOffset = .zero
            contactsView.layer.shadowRadius = 10
            
            inventoryView.layer.shadowColor = UIColor.white.cgColor
            inventoryView.layer.shadowOpacity = 0.5
            inventoryView.layer.shadowOffset = .zero
            inventoryView.layer.shadowRadius = 10
            
            revenueView.layer.shadowColor = UIColor.white.cgColor
            revenueView.layer.shadowOpacity = 0.5
            revenueView.layer.shadowOffset = .zero
            revenueView.layer.shadowRadius = 10
            
            // Borders for UIViews
            appointmentsView.layer.borderWidth = 1
            appointmentsView.layer.borderColor = UIColor.blue.cgColor
            
            contactsView.layer.borderWidth = 1
            contactsView.layer.borderColor = UIColor.blue.cgColor
            
            inventoryView.layer.borderWidth = 1
            inventoryView.layer.borderColor = UIColor.blue.cgColor
            
            revenueView.layer.borderWidth = 1
            revenueView.layer.borderColor = UIColor.blue.cgColor
        
        
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
