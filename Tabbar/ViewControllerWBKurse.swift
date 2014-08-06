//
//  FirstViewController.swift
//  Tabbar
//
//  Created by Philipp Süess on 10.07.14.
//  Copyright (c) 2014 Philipp Süess. All rights reserved.
//

import UIKit

class ViewControllerWBKurse: UIViewController, UIWebViewDelegate {
    
    
    @IBOutlet var Webview: UIWebView!
    
    
    var URLPath = "https://ewdev.phlu.ch/index.php?id=1932"
    
    func loadAddressURL() {
        let requestURL = NSURL(string:URLPath)
        let request = NSURLRequest(URL:requestURL)
        Webview.loadRequest(request)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //start delegate
        Webview.delegate = self
        
        loadAddressURL()
        
       //TitelAusgeben()
    }
    

    //delegate function erweiterung
      func webViewDidFinishLoad(Webview: UIWebView!){
        
        //Titel auslesen
        var title = Webview.stringByEvaluatingJavaScriptFromString("document.title")
        
        if ( (title as NSString).length > 0) {
            println("PageTitel: " + title)
            pageTitle.text = title
        } else {
            println("PageTitel: Nicht gesetzt > Kurssuche")
            pageTitle.text = "Kurssuche"
        }
    
        println("view did load!")
        
    }
    
    
    @IBOutlet var pageTitle: UITextField!
    
    
    //timed event > titel ausgeben
    func TitelAusgeben() {
        
        //Titel auslesen
        var title = Webview.stringByEvaluatingJavaScriptFromString("document.title")
        
        if ( (title as NSString).length > 0) {
            println("PageTitel: " + title)
            pageTitle.text = title
        }
        else
        {
            //timer, der sich selbst aufruft!
           var timer = NSTimer.scheduledTimerWithTimeInterval(0.05, target: self, selector: Selector("TitelAusgeben"), userInfo: nil, repeats: false)
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

