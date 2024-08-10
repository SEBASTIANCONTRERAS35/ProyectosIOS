//
//  wheatherManager.swift
//  Clima
//
//  Created by Emilio Contreras on 31/08/23.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import Foundation
 
struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?q=london&appid=3077670c5ac4e32d39ce00cc84b416f5&units=metric"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        print("Before : \(urlString)")
        performRequest(url: urlString)
        print("After : \(urlString)")
    }
    
    func performRequest(url: String){
        print("Working 1")
        let url = URL(string: url)
        
        guard let requestUrl = url else { fatalError() }
        // Create URL Request
        print("Working 2")
        var request = URLRequest(url: requestUrl)
        // Specify HTTP Method to use
        request.httpMethod = "GET"
        // Send HTTP Request
        print("Working 3")
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            print("Working 4")
            // Check if Error took place
            if let error = error {
                print("Working 5")
                print("Error took place \(error)")
                return
            }
            print("Working 5.5")
            // Read HTTP Response Status code
            if let response = response as? HTTPURLResponse {
                print("Response HTTP Status code: \(response.statusCode)")
                print("Working 6")
            }
            
            // Convert HTTP Response Data to a simple String
            if let data = data, let dataString = String(data: data, encoding: .utf8) {
                
                print("Response data string:\n \(dataString)")
            }
            
        }
        task.resume()
    }
}
