//
//  Part.swift
//  Boatell-x-v2
//
//  Created by Austin Potts on 3/13/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation
import UIKit


class Part {
    
    var name: String
    var price: String
    var image: UIImage
    var partNumber: String
    
    init(name: String, price: String, imageName: String, partNumber: String) {
        self.image = UIImage(named: imageName)!
        self.name = name
        self.price = price
        self.partNumber = partNumber
    }
    
}
