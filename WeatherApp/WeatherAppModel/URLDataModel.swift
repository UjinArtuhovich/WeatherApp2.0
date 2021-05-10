//
//  URLModel.swift
//  WeatherApp
//
//  Created by Ujin Artuhovich on 5/7/21.
//

import Foundation
//MARK: model to fetch url data
class URLDataModel {
    private var urlString: String!
    init(urlString: String) {
        self.urlString = urlString
    }
    func getURLData(completion: @escaping(Data?, Error?)->()) {
        guard let url = URL(string: urlString) else { return }
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) { (data, response, error) in
            DispatchQueue.main.async {
                if let error = error {
                    completion(nil, error)
                }
                else if let data = data {
                    completion(data, nil)
                }
            }
        }
        task.resume()
    }
}
