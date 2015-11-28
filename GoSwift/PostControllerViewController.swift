//
//  PostControllerViewController.swift
//  GoSwift
//
//  Created by Marc Peters on 2015-11-28.
//  Copyright © 2015 Marc Peters. All rights reserved.
//

import UIKit

class PostControllerViewController: UIViewController {

    @IBOutlet weak var encouragement: UITextView!
    @IBOutlet weak var encouragementLabel: UILabel!
    @IBOutlet weak var embarrassment: UITextView!
    @IBOutlet weak var embarrassmentLabel: UILabel!
    @IBOutlet var postView: UIView!
    
    @IBOutlet weak var backgroundImage: UIImageView!
    
    @IBOutlet weak var sendingLabel: UILabel!
    @IBOutlet weak var postButton: UIButton!
    override func viewDidLoad() {
        
        super.viewDidLoad()
encouragement.layer.borderWidth = CGFloat(1.0)
        embarrassment.layer.borderWidth = CGFloat(1.0)
        encouragement.layer.borderColor = UIColor.grayColor().CGColor
        embarrassment.layer.borderColor = UIColor.grayColor().CGColor
        
        encouragement.layer.cornerRadius = CGFloat(5.0)
        encouragement.clipsToBounds = true
        embarrassment.layer.cornerRadius = CGFloat(5.0)
        embarrassment.clipsToBounds = true
        
        //var background = UIImage(imageLiteral: "English_Summer_Forest_blurred.jpeg")
        
//        var imageToBlur = CIImage(image: background)
//        var blurfilter = CIFilter(name: "CIGaussianBlur")
//        blurfilter!.setValue(imageToBlur, forKey: "inputImage")
//        var resultImage = blurfilter!.valueForKey("outputImage") as! CIImage
//        var blurredImage = UIImage(CIImage: resultImage)
          //self.backgroundImage.layer.zPosition = CGFloat(-1)
//        self.backgroundImage.image = blurredImage
        
        //backgroundImage.image = background
//        let blur = UIBlurEffect(style: .Light)
//        let effectView = UIVisualEffectView(effect: blur)
//        effectView.frame = backgroundImage.frame
//        view.addSubview(effectView)
//        //view.bringSubviewToFront(effectView)
//        view.sendSubviewToBack(effectView)
        view.sendSubviewToBack(backgroundImage)
        
        postButton.layer.cornerRadius = CGFloat(15)
        
        
        // Do any additional setup after loading the view.
    }

//    func applyBlurEffect(image: UIImage){
//        var imageToBlur = CIImage(image: image)
//        var blurfilter = CIFilter(name: "CIGaussianBlur")
//        blurfilter!.setValue(imageToBlur, forKey: "inputImage")
//        var resultImage = blurfilter!.valueForKey("outputImage") as! CIImage
//        var blurredImage = UIImage(CIImage: resultImage)
//        //self.backgroundImage.image = blurredImage
//        self.view.backgroundColor = UIColor(patternImage: blurredImage)
//        
//    }
    
    func getDelay(seconds: Double)-> Double
    {
        return seconds * Double(NSEC_PER_SEC)
    }

    @IBAction func postButtonClick(sender: UIButton) {
        UIView.animateWithDuration(1.0, animations: {
            self.postButton.alpha = 0.0
            self.encouragement.alpha = 0.0
            self.encouragementLabel.alpha = 0.0
            self.embarrassment.alpha = 0.0
            self.embarrassmentLabel.alpha = 0.0
        })
        
        //let seconds = 1.0
        //let delay = seconds * Double(NSEC_PER_SEC)  // nanoseconds per seconds
        let dispatchTime1 = dispatch_time(DISPATCH_TIME_NOW, Int64(getDelay(1.0)))
        let dispatchTime2 = dispatch_time(DISPATCH_TIME_NOW, Int64(getDelay(1.3)))
        let dispatchTime3 = dispatch_time(DISPATCH_TIME_NOW, Int64(getDelay(1.6)))
        let dispatchTime4 = dispatch_time(DISPATCH_TIME_NOW, Int64(getDelay(1.9)))
        let dispatchTime5 = dispatch_time(DISPATCH_TIME_NOW, Int64(getDelay(2.2)))
        let dispatchTime6 = dispatch_time(DISPATCH_TIME_NOW, Int64(getDelay(2.5)))
        
        dispatch_after(dispatchTime1, dispatch_get_main_queue(), {
            UIView.animateWithDuration(0.3, animations: {
                self.sendingLabel.alpha = 1.0
            })
        })
        dispatch_after(dispatchTime2, dispatch_get_main_queue(), {
            UIView.animateWithDuration(0.3, animations: {
                self.sendingLabel.textColor = UIColor.greenColor()
            })
        })
        
        //navigationController?.popViewControllerAnimated(true)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        // Get the new view controller using segue.destinationViewController.
//        segue.destinationViewController.
//        // Pass the selected object to the new view controller.
//    }

}
