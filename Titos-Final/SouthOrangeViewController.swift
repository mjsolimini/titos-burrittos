//
//  SouthOrangeViewController.swift
//  Titos-Final
//
//  Created by Michael Solimini on 1/29/17.
//  Copyright © 2017 Alpha Dev. All rights reserved.
//

import UIKit
import WebKit

class SouthOrangeViewController: UIViewController {

    @IBOutlet weak var Container: UIView!
    var WebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        WebView = WKWebView()
        Container.addSubview(WebView)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let frame = CGRect(x: 0, y:0, width: Container.bounds.width, height: Container.bounds.height)
        WebView.frame = frame
        loadRequest(urlStr: "http://www.titosburritos.com/order-online-ridgewood/")
    }
    
    func loadRequest(urlStr: String) {
        let url = URL(string: urlStr)!
        let request = URLRequest(url: url)
        WebView.load(request)
    }

}
