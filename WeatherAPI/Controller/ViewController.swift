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

    override func viewDidLoad() {
        super.viewDidLoad()
     
        let urlString = "\(endPoint)&q=\(zipCode)&api=no"

        getData(url: urlString)
        
        zipCodeLabel.text = String(zipCode)
        
    }


}



