//
//  ViewController.swift
//  Perfect
//
//  Created by Anirudh on 08/03/17.
//  Copyright © 2017 Electro Cheval. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UIWebViewDelegate {
    
    @IBOutlet weak var webView : UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        webView.delegate = self
        if let url = URL(string: "http://demosguru.com/perfect/") {
            let request = URLRequest(url: url)
            webView.loadRequest(request)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   /* func carousel(_ carousel: iCarousel, viewForItemAt index: Int, reusing view: UIView?) -> UIView {
        var imgVw : UIImageView!
        
        if view == nil
        {
            imgVw = UIImageView(frame: CGRect(x: 0, y: 0, width: 250, height: 250))
            imgVw.contentMode = .scaleAspectFit
        }
        else {
            imgVw = view as! UIImageView
        }
        imgVw.image = UIImage(named: "\(imgArray.object(at: index))" )
        return imgVw
    }
    func numberOfItems(in carousel: iCarousel) -> Int {
        return imgArray.count
    }*/
    
}
