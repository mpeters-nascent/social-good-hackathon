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
        //self.navigationController?.setNavigationBarHidden(false, animated: true)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
}

