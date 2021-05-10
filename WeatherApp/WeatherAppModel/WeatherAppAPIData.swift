// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let weather = try? newJSONDecoder().decode(Weather.self, from: jsonData)

import Foundation

// MARK: - Weather
struct Weather: Codable {
    let latitude, longitude: Double
    let timezone: String
    let currently: Currently
    let hourly: Hourly
    let daily: Daily
    let offset: Int
}

// MARK: - Currently
struct Currently: Codable {
    let time: Int
   // let summary: Summary
    let icon: Icon
    let precipIntensity, precipProbability, temperature, apparentTemperature: Double
    let dewPoint, humidity, pressure, windSpeed: Double
    let windGust: Double
    let windBearing: Int
    let cloudCover: Double
    let uvIndex, visibility: Int
    let ozone: Double
    let precipType: String?
}

enum Icon: String, Codable {
    case clearDay = "clear-day"
    case clearNight = "clear-night"
    case partlyCloudyDay = "partly-cloudy-day"
    case partlyCloudyNight = "partly-cloudy-night"
}
//
//enum Summary: String, Codable {
//    case clear = "Clear"
//    case mostlyCloudy = "Mostly Cloudy"
//    case partlyCloudy = "Partly Cloudy"
//}

// MARK: - Daily
struct Daily: Codable {
    let summary, icon: String
    let data: [Datum]
}

// MARK: - Datum
struct Datum: Codable {
    let time: Int
    let summary, icon: String
    let sunriseTime, sunsetTime: Int
    let moonPhase, precipIntensity, precipIntensityMax: Double
    let precipIntensityMaxTime: Int
    let precipProbability: Double
    let precipType: String?
    let precipAccumulation: Int?
    let temperatureHigh: Double
    let temperatureHighTime: Int
    let temperatureLow: Double
    let temperatureLowTime: Int
    let apparentTemperatureHigh: Double
    let apparentTemperatureHighTime: Int
    let apparentTemperatureLow: Double
    let apparentTemperatureLowTime: Int
    let dewPoint, humidity, pressure, windSpeed: Double
    let windGust: Double
    let windGustTime, windBearing: Int
    let cloudCover: Double
    let uvIndex, uvIndexTime: Int
    let visibility, ozone, temperatureMin: Double
    let temperatureMinTime: Int
    let temperatureMax: Double
    let temperatureMaxTime: Int
    let apparentTemperatureMin: Double
    let apparentTemperatureMinTime: Int
    let apparentTemperatureMax: Double
    let apparentTemperatureMaxTime: Int
}

// MARK: - Hourly
struct Hourly: Codable {
    let summary: String
    let icon: Icon
    let data: [Currently]
}

