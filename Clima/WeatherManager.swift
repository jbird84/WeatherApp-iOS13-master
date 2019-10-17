//
//  WeatherManager.swift
//  Clima
//
//  Created by Kinney Kare on 10/16/19.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    //we are creating the URL for the API.
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=3a4214c9ce3c66cf539c3d585593c6ce&units=imperial"
    
    //this fuction allows us to add a city name to the URL string.
    func fetchWeather(cityName: String) {
        let stringURL = "\(weatherURL)&q=\(cityName)"
        performRequest(stringURL: stringURL)
    }
    
    func performRequest(stringURL: String) {
        //1.Create a URL
        if let url = URL(string: <#T##String#>) {
        
            //2. Create a URLSession
            let session = URLSession(configuration: .default)
            
            //3. Give the URLSession a task.
            let task = session.dataTask(with: url, completionHandler: handler(data:response:error:))
        
            //4. Start the task
            task.resume()
        }
    }
    
    func handler(data: Data?, response: URLResponse?, error: Error?) {
        if error != nil {
            print(error!)
            return
        }
        
        if let safeData = data {
            //convert the data into a string 
            let dataString = String(data: safeData, encoding: .utf8)
            print(dataString)
        }
        
        
    }
    
}
