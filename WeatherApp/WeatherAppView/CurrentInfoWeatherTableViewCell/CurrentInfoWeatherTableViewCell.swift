//
//  CurrentInfoWeatherTableViewCell.swift
//  WeatherApp
//
//  Created by Ujin Artuhovich on 5/7/21.
//

import UIKit
class CurrentInfoWeatherTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    lazy var count: Int? = nil
    private let title = ["SUNRISE", "SUNSET", "CLOUD COVER", "HUMIDITY", "WIND", "PRECIPITATION", "PRESSURE", "VISIBILITY", "UV INDEX"]
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = Colors.myBlue
    }

    static let identifier = "CurrentInfoWeatherTableViewCell"

    static func nib() -> UINib {
        return UINib(nibName: "CurrentInfoWeatherTableViewCell",
                     bundle: nil)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(false, animated: false)
    }
    func configure(index: Int, weather: Datum) {
        guard let count = count else {return}
        titleLabel.text = title[index-count]
        let i = index-count
        switch i {
        case 0: detailLabel.text = Formatter.shared.getDayForDate(Date(timeIntervalSince1970: Double(weather.sunriseTime)), format: "HH:mm")
        case 1: detailLabel.text = Formatter.shared.getDayForDate(Date(timeIntervalSince1970: Double(weather.sunsetTime)), format: "HH:mm")
        case 2: detailLabel.text = "\(Int(weather.cloudCover*100))%"
        case 3: detailLabel.text = "\(Int(weather.humidity*100))%"
        case 4: detailLabel.text = "\(Int(weather.windSpeed)) km/hr"
        case 5: detailLabel.text = String(Int(weather.precipIntensity))
        case 6: detailLabel.text = "\(Int(weather.pressure)) hPa"
        case 7: detailLabel.text = "\(Int(weather.visibility)) km"
        case 8: detailLabel.text = String(weather.uvIndex)
        default:
            print("index")
        }
    }
    
    
}
