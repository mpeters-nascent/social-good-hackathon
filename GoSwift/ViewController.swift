//
//  ViewController.swift
//  GoSwift
//
//  Created by Marc Peters on 2015-11-27.
//  Copyright © 2015 Marc Peters. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var seeButton: UIButton!
    @IBOutlet weak var shareButton: UIButton!
    
    @IBOutlet weak var splashImage: UIImageView!
    @IBOutlet weak var shareCounter: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.setNavigationBarHidden(true, animated: false)

        
 
        seeButton.backgroundColor = UIColor.whiteColor()
        seeButton.layer.borderWidth = 2
        seeButton.layer.borderColor = UIColor.grayColor().CGColor
        seeButton.layer.cornerRadius = 4
        seeButton.titleEdgeInsets = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)

        shareButton.backgroundColor = UIColor.whiteColor()
        shareButton.layer.borderWidth = 2
        shareButton.layer.borderColor = UIColor.grayColor().CGColor
        shareButton.layer.cornerRadius = 4
        shareButton.titleEdgeInsets = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        
        shareCounter.layer.cornerRadius = CGFloat(10)
        
        let dispatchTime1 = dispatch_time(DISPATCH_TIME_NOW, Int64(getDelay(3.0)))
        
        dispatch_after(dispatchTime1, dispatch_get_main_queue(), {
            
            self.navigationController?.setNavigationBarHidden(false, animated: true)
            UIView.animateWithDuration(0.8, animations: {
                self.splashImage.alpha = 0.0
            })
        })
    }
    
    func getDelay(seconds: Double)-> Double
    {
        return seconds * Double(NSEC_PER_SEC)
    }
    
}

