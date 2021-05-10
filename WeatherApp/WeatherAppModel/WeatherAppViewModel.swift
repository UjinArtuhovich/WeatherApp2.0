//
//  File.swift
//  WeatherApp
//
//  Created by Ujin Artuhovich on 5/7/21.
//

import Foundation
class WeatherAppViewModel {
    var weatherAppViewData: Weather!
    var dataViewUpdated: (() -> ())?
    var dataManager: DataManager
    required init(dataManager: DataManager) {
        self.dataManager = dataManager
        weatherAppViewData = nil
    }
    //MARK: Transfer APIData to view data
    func getData() {
        dataManager.getWeatherAPIData { data, error in
            guard let data = data else { return }
            self.weatherAppViewData = data
            self.dataViewUpdated?()
        }
    }
}
