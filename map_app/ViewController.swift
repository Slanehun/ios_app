//
//  ViewController.swift
//  map_app
//
//  Created by Dévényi Máté on 2020. 04. 27..
//  Copyright © 2020. fejleszTech. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://www.fejlesztech.hu")!
        let request = URLRequest(url: url)
        webView.load(request)
    }


}

