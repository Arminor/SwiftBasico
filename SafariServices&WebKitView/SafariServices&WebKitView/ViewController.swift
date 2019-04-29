//
//  ViewController.swift
//  SafariServices&WebKitView
//
//  Created by SSiOS on 4/29/19.
//  Copyright © 2019 SSiOS. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController {

    let uriString: String = "https://developer.apple.com/design/human-interface-guidelines/ios/visual-design/adaptivity-and-layout/"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func showSafariVC(for url: String){
        guard let url = URL(string: url) else{
            return
        }
        
        let safariVC = SFSafariViewController(url: url)
        present(safariVC, animated: true)
    }
    

   @IBAction func showSafari(_ sender: UIButton) {
        showSafariVC(for: uriString)
    }
    
}
