//
//  Daily.swift
//  Titos-Final
//
//  Created by Michael Solimini on 1/28/17.
//  Copyright © 2017 Alpha Dev. All rights reserved.
//

import Foundation
import WebKit

class Daily: UIViewController {
    override func viewDidLoad() {
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        WebView = WKWebView()
        Container.addSubview(WebView)
    }
    
    @IBOutlet weak var Container: UIView!
    var WebView: WKWebView!
    
    override func viewDidAppear(_ animated: Bool) {
        let frame = CGRect(x: 0, y:0, width: Container.bounds.width, height: Container.bounds.height)
        WebView.frame = frame
        loadRequest(urlStr: "http://www.titosburritos.com/menu/#daily-specials")
    }
    
    func loadRequest(urlStr: String) {
        let url = URL(string: urlStr)!
        let request = URLRequest(url: url)
        WebView.load(request)
    }
}
