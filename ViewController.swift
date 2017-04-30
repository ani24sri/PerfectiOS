//
//  ViewController.swift
//  Perfect
//
//  Created by Anirudh on 08/03/17.
//  Copyright © 2017 Electro Cheval. All rights reserved.
//

import UIKit

class ViewController: UIViewController , iCarouselDelegate , iCarouselDataSource  {

    var imgArray :NSMutableArray = NSMutableArray()

    @IBOutlet weak var DisplayView : iCarousel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imgArray = ["logo.png","s1.png","s3.png","s5.png","s6.jpg"]
        DisplayView.type = iCarouselType.wheel
        DisplayView.contentMode = .scaleAspectFit
        DisplayView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func carousel(_ carousel: iCarousel, viewForItemAt index: Int, reusing view: UIView?) -> UIView {
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
    }
    
}
