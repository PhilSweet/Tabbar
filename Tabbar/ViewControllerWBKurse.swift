//
//  FirstViewController.swift
//  Tabbar
//
//  Created by Philipp Süess on 10.07.14.
//  Copyright (c) 2014 Philipp Süess. All rights reserved.
//

import UIKit

class ViewControllerWBKurse: UIViewController {
    
    
    @IBOutlet var Webview: UIWebView
    
    
    var URLPath = "http://evento-web.phlu.ch"
    
    func loadAddressURL() {
        let requestURL = NSURL(string:URLPath)
        let request = NSURLRequest(URL:requestURL)
        Webview.loadRequest(request)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        loadAddressURL()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

