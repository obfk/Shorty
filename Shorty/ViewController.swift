//
//  ViewController.swift
//  Shorty
//
//  Created by Devin Brown on 6/10/15.
//  Copyright (c) 2015 Apress. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var urlField: UITextField!
    @IBOutlet var webView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loadLocation ( AnyObject ) {
        var urlText = urlField.text

        if !urlText.hasPrefix("http:") && !urlText.hasPrefix("https:") {
            if !urlText.hasPrefix("//") {
                urlText = "//" + urlText
            }
            urlText = "http:" + urlText
        }

        let url = NSURL(string: urlText)
        webView.loadRequest(NSURLRequest(URL: url!))

    }

}

