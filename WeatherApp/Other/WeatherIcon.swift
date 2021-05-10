//
//  WeatherAppIcon.swift
//  WeatherApp
//
//  Created by Ujin Artuhovich on 5/9/21.
//

import Foundation
class WeatherIcon {
    static let shared = WeatherIcon()
    
    func getIcon(type: String) -> String {
        switch type {
        case "clear-day": return "sun.max.fill"
        case "clear-night": return "moon.stars.fill"
        case "partly-cloudy-day": return "cloud.sun.fill"
        case "partly-cloudy-night": return "cloud.moon.fill"
        case "rain": return "cloud.rain.fill"
        case "cloudy": return "cloud.fill"
        case "snow": return "cloud.snow.fill"
        default: return "nosign"
        }
    }
}
