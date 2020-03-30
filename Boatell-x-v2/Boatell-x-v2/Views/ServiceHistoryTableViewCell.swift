//
//  ServiceHistoryTableViewCell.swift
//  Boatell-x-v2
//
//  Created by Austin Potts on 3/26/20.
//  Copyright © 2020 Potts Evolvements. All rights reserved.
//

import UIKit

class ServiceHistoryTableViewCell: UITableViewCell {
    
    
    @IBOutlet var serviceTypeImage: UIImageView!
    @IBOutlet var serviceDateLabel: UILabel!
    @IBOutlet var servicePriceLabel: UILabel!
    
    
    
    var service: Service? {
        didSet {
            updateViews()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        updateViews()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateViews() {
        
        serviceDateLabel.text = service?.date
        servicePriceLabel.text = service?.price
        
        
    }
    
    

}
