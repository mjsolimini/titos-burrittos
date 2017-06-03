//
//  Locations.swift
//  Titos-Final
//
//  Created by Michael Solimini on 1/28/17.
//  Copyright © 2017 Alpha Dev. All rights reserved.
//

import Foundation
import WebKit

class Locations: UIViewController {
    override func viewDidLoad() {
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
       
    }
    
    
    
}
