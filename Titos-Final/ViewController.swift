//
//  ViewController.swift
//  Titos-Final
//
//  Created by Michael Solimini on 1/28/17.
//  Copyright © 2017 Alpha Dev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Open: UIBarButtonItem!
    @IBOutlet weak var label: UILabel!
    
    var varView = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Open.target = self.revealViewController()
        Open.action = Selector("revealToggle:")
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        if (varView == 0) {
            label.text = "strings"
        } else {
            label.text = "others"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

}

