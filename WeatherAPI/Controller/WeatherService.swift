//
//  WeatherService.swift
//  WeatherAPI
//
//  Created by Tatsuya Moriguchi on 6/13/22.
//

import Foundation
import UIKit


class WeatherService {
    
    func getData(url: String, onCompletion: @escaping (WeatherData) -> ()) {
        
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
                    
                    DispatchQueue.main.async {
                        onCompletion(result)
                        
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
