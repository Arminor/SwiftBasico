//
//  ViewController.swift
//  SafariServices&WebKitView
//
//  Created by SSiOS on 4/8/19.
//  Copyright © 2019 SSiOS. All rights reserved.
//

import UIKit
import WebKit

class WebKitViewController: UIViewController,   UITextFieldDelegate, WKNavigationDelegate {

    
    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var btnAhead: UIButton!
    @IBOutlet weak var webView: WKWebView!
    
    @IBOutlet weak var textViewUri: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textViewUri.delegate = self
        webView.navigationDelegate = self
        
        
    }
  
    
   override func viewDidAppear(_ animated: Bool) {
   super.viewDidAppear(animated)
   
    let uriString: String = "https://developer.apple.com"
   let uri: URL = URL(string: uriString)!
   let uriRequest: URLRequest = URLRequest(url: uri)
    webView.load(uriRequest)
    textViewUri.text = uriString
    
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        let uriString: String = textViewUri.text!
        let uri: URL = URL(string: uriString)!
        let uriRequest: URLRequest = URLRequest(url: uri)
        webView.load(uriRequest)
        textViewUri.resignFirstResponder()
        return true
    }
    
    @IBAction func backBtn(_ sender: UIButton) {
        if webView.canGoBack{
            webView.goBack()
            
        }
    }
    
    @IBAction func aheadBtn(_ sender: UIButton) {
        if webView.canGoForward{
            webView.goForward()
        }
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        btnBack.isEnabled = webView.canGoBack
        btnAhead.isEnabled = webView.canGoForward
        
        textViewUri.text = webView.url?.absoluteString
    }
}

