//
//  HourlyWeatherCollectionViewCell.swift
//  WeatherApp
//
//  Created by Ujin Artuhovich on 5/9/21.
//

import UIKit

class HourlyWeatherCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var weatherImage: UIImageView!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    static let identifier = "HourlyWeatherCollectionViewCell"

    static func nib() -> UINib {
        return UINib(nibName: "HourlyWeatherCollectionViewCell",
                     bundle: nil)
    }
    func configure(weather: Currently) {
        weatherImage.image = UIImage(systemName: WeatherIcon.shared.getIcon(type: weather.icon.rawValue))
        timeLabel.text = Formatter.shared.getDayForDate(Date(timeIntervalSince1970: Double(weather.time)), format: "HH")
        temperatureLabel.text = "\(Int(weather.temperature))°"
    }
}
