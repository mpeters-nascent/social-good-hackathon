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
    
    override func viewDidLoad() {
        super.viewDidLoad()
<<<<<<< HEAD
        //self.navigationController?.setNavigationBarHidden(false, animated: true)
        // Do any additional setup after loading the view, typically from a nib.
=======
        
        
        
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

>>>>>>> 3541bb1cea36c5e19b62470b66104a70a340b23f
    }
    
}

