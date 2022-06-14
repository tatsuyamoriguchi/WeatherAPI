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
    
    
    let endPoint = "https://api.weatherapi.com/v1/current.json?key=cb4f89b62a41411fb44184017221206"
    
    let zipCode = 92618

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let urlString = "\(endPoint)&q=\(zipCode)&api=no"

        getData(url: urlString)
        
        
    }


}



