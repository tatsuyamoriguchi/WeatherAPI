//
//  ViewController.swift
//  WeatherAPI
//
//  Created by Tatsuya Moriguchi on 6/12/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var currentTemeratureLabel: UILabel!
    @IBOutlet weak var currentWeatherLabel: UILabel!
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var zipCodeLabel: UILabel!
    
    let endPoint = "https://api.weatherapi.com/v1/current.json?key=cb4f89b62a41411fb44184017221206"
    
    let zipCode = 92618
    let weatherService = WeatherService()
    var weatherData: WeatherData?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        zipCodeLabel.text = String(zipCode)
        let urlString = "\(endPoint)&q=\(zipCode)&api=no"
        
        let anonymousFunction = { (fetchedWeatherData: WeatherData) in
            self.weatherData = fetchedWeatherData
            
            DispatchQueue.main.async {
                
                self.cityNameLabel?.text = self.weatherData?.location.name
                self.stateLabel?.text = self.weatherData?.location.region
                self.currentWeatherLabel?.text = self.weatherData?.current.condition.text
                self.currentTemeratureLabel?.text = String(self.weatherData?.current.temp_f ?? 0.0)

                guard let iconString = self.weatherData?.current.condition.icon else {
                    print("iconString Error")
                    return }
                print("iconString: \(iconString)")
                
                let iconURLString = "https:" + iconString
                guard let iconURL = URL(string: iconURLString) else {
                    print("iconURL error - iconUrl")
                    return
                }
                if let imageData = NSData(contentsOf: iconURL as URL)  {
                    DispatchQueue.main.async {
                        self.iconImageView?.image = UIImage(data: imageData as Data)
                    }
                }

            }

            
        }
        weatherService.getData(url: urlString, onCompletion: anonymousFunction)
        
        
    }

}



