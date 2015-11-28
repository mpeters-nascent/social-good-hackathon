//
//  ViewController.swift
//  GoSwift
//
//  Created by Marc Peters on 2015-11-27.
//  Copyright © 2015 Marc Peters. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myFirstLabel: UILabel!
    @IBAction func getWeather(sender: UIButton) {
        WeatherService.sharedInstance.getWeatherForCity("toronto", completion: {
            weather in
            
            print("\(weather)")
        })
    }
    
    private let randomWords = ["Marc", "porpoise", "whale", "pickles", "circus tent"]
    private var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func navButtonPressed(sender: AnyObject) {
        let postView = storyboard!.instantiateViewControllerWithIdentifier("post")
        self.navigationController?.pushViewController(postView, animated: true)
    }
    
    @IBAction func changeLabelText(sender: AnyObject) {
        let button = sender as? UIButton
        button?.tintColor = UIColor.redColor()
        
        if let buttonB = sender as? UIButton {
            buttonB.tintColor=UIColor.greenColor()
        }
        
        guard let buttonC = sender as? UIButton else {
            return;
        }
        
        buttonC.tintColor = UIColor.orangeColor()
        myFirstLabel.text = randomWords[counter]
        counter++
        if counter >= randomWords.count {
            counter = 0
        }
        
    }
    
}

