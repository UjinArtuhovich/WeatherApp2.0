//
//  DataManager.swift
//  WeatherApp
//
//  Created by Ujin Artuhovich on 5/7/21.
//

import Foundation
//MARK: Model to parse API data
class DataManager {
    private var URLdataModel: URLDataModel
    init(URLdataModel: URLDataModel) {
        self.URLdataModel = URLdataModel
    }
    func getWeatherAPIData(completion: @escaping(Weather?, Error?)->()) {
        URLdataModel.getURLData { data, error in
            let decoder = JSONDecoder()
            if let error = error {
                completion(nil, error)
            }
            do {
                guard let data = data else { return }
                let weatherAPIData = try decoder.decode(Weather.self, from: data)
                completion(weatherAPIData, nil)
            }
            catch let error as NSError {
                completion(nil, error)
            }
        }
    }
}
