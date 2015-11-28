//
//  WeatherService.swift
//  GoSwift
//
//  Created by Marc Peters on 2015-11-27.
//  Copyright © 2015 Marc Peters. All rights reserved.
//

import Foundation
import Alamofire

internal class WeatherService {
    
    //singleton declaration
    internal static let sharedInstance = WeatherService()
    
    private let APIKey : String = "30be7bebfa99d2544dd0aba0f3ee6b65"
    private let BaseUrl = "http://api.openweathermap.org/data/2.5/weather"
    //Alamofire.request(.GET, "")
    
    internal func getWeatherForCity(city: String, completion: (weather: String) -> Void)
    {
        Alamofire.request(.GET, BaseUrl, parameters: ["q": city, "appid": APIKey, "units":"metric"]).responseJSON(completionHandler: {
            response in
            print("\(response)ssa")
        })
    }
}