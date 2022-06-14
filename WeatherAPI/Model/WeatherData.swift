//
//  WeatherData.swift
//  WeatherAPI
//
//  Created by Tatsuya Moriguchi on 6/13/22.
//

import Foundation


struct WeatherData: Codable {
    let location: Location
    let current: Current
}

struct Location: Codable {
    let name: String
    let region: String
    let country: String
    let localtime: String
}

struct Current: Codable {
    let temp_c: Double
    let temp_f: Double
    let condition: Condition
}

struct Condition: Codable {
    let text: String
    let icon: String
    let code: Int
}



/*
 Weather api Interactive API Explorer
 https://www.weatherapi.com/api-explorer.aspx
 
 Call
 https://api.weatherapi.com/v1/current.json?key=cb4f89b62a41411fb44184017221206&q=92618&aqi=no
 
 Response Headers
 {
   "Transfer-Encoding": "chunked",
   "Connection": "keep-alive",
   "Vary": "Accept-Encoding",
   "CDN-PullZone": "93447",
   "CDN-Uid": "8fa3a04a-75d9-4707-8056-b7b33c8ac7fe",
   "CDN-RequestCountryCode": "GB",
   "CDN-ProxyVer": "1.02",
   "CDN-RequestPullSuccess": "True",
   "CDN-RequestPullCode": "200",
   "CDN-CachedAt": "06/13/2022 08:36:30",
   "CDN-EdgeStorageId": "576",
   "CDN-Status": "200",
   "CDN-RequestId": "0caee568af8dd3a86c231ddabc61fa5e",
   "CDN-Cache": "MISS",
   "Cache-Control": "public, max-age=180",
   "Content-Type": "application/json",
   "Date": "Mon, 13 Jun 2022 08:36:30 GMT",
   "Server": "BunnyCDN-FR1-576"
 }
 
 Response Body
 {
     "location": {
         "name": "Irvine",
         "region": "California",
         "country": "USA",
         "lat": 33.71,
         "lon": -117.71,
         "tz_id": "America/Los_Angeles",
         "localtime_epoch": 1655109390,
         "localtime": "2022-06-13 1:36"
     },
     "current": {
         "last_updated_epoch": 1655109000,
         "last_updated": "2022-06-13 01:30",
         "temp_c": 16.7,
         "temp_f": 62.1,
         "is_day": 0,
         "condition": {
             "text": "Clear",
             "icon": "//cdn.weatherapi.com/weather/64x64/night/113.png",
             "code": 1000
         },
         "wind_mph": 8.1,
         "wind_kph": 13.0,
         "wind_degree": 260,
         "wind_dir": "W",
         "pressure_mb": 1011.0,
         "pressure_in": 29.85,
         "precip_mm": 0.0,
         "precip_in": 0.0,
         "humidity": 90,
         "cloud": 0,
         "feelslike_c": 16.7,
         "feelslike_f": 62.1,
         "vis_km": 16.0,
         "vis_miles": 9.0,
         "uv": 1.0,
         "gust_mph": 7.8,
         "gust_kph": 12.6
     }
 }
 
 */
