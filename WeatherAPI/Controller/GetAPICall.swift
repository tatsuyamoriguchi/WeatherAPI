//
//  GetAPICall.swift
//  WeatherAPI
//
//  Created by Tatsuya Moriguchi on 6/13/22.
//

import Foundation
import UIKit


extension ViewController {
    
    
    
    func getData(url: String) {
        
        var request = URLRequest(url: URL(string: url)!)
        request.httpMethod = "GET"
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        
        let session = URLSession.shared
        let task = session.dataTask(with: request, completionHandler: { data, response, error -> Void in
            if error != nil {
                print("Error: \(String(describing: error))")
            } else {
                
                do {
                    
                    let result = try JSONDecoder().decode(WeatherData.self, from: data!)
                    
                    print(result.location.name)
                    print(result.location.region)
                    print(result.location.country)
                    print(result.location.localtime)
                    
                    print(result.current.temp_c)
                    print(result.current.temp_f)
                    print(result.current.condition.code)
                    print(result.current.condition.text)
                    print(result.current.condition.icon)
                    
                    DispatchQueue.main.async {
                        self.cityNameLabel.text = result.location.name
                        self.stateLabel.text = result.location.region
                        self.currentWeatherLabel.text = result.current.condition.text
                        self.currentTemeratureLabel.text = String(result.current.temp_f)
                        
                        let iconString = "https:" + result.current.condition.icon
                        print("iconString: \(iconString)")
                        let iconURL = URL(string: iconString)
                        if let imageData = NSData(contentsOf: iconURL! as URL)  {
                            DispatchQueue.main.async {
                                self.iconImageView.image = UIImage(data: imageData as Data)
                            }
                        }
                        
                    }
                } catch {
                    print("error: \(error)")
                }
            }
        })
        task.resume()
        
    }
    
}

/*
 if let imagedata = NSData(contentsOf: imageurl! as URL)
 {
 DispatchQueue.main.async {
 
 self.img.image = UIImage(data: imagedata as Data)
 
 }
 
 }
 
 
 */