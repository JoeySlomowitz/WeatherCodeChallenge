//
//  NetworkController.swift
//  OptusCodeChallenge
//
//  Created by Joey Slomowitz on 26/6/18.
//  Copyright © 2018 Joey Slomowitz. All rights reserved.
//

import Foundation

class NetworkController {
    
    let baseURL = "http://api.openweathermap.org/data/"
    let version = "2.5/weather?"
    let sydneyID = "id=2147714"
    
    let metricUnits = "&units=metric"
    
    let fahrenheitUnits = "&units=imperial"
    
    let apiKey = "&APPID=d65e80a3b31f683d741ef9d015c0621f"
    
    
    
    
    func getWeatherData() {
        guard let url = URL(string: baseURL + version + sydneyID + metricUnits + apiKey) else { return }
        
        let session = URLSession.shared
        let task = session.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let weather = try decoder.decode(Results.self, from: data)
                print(weather)
            } catch {
                
            }
        }
        
        task.resume()
    }
    
}
