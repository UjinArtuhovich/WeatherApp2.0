//
//  DateFormatter.swift
//  WeatherApp
//
//  Created by Ujin Artuhovich on 5/7/21.
//

import Foundation
import UIKit
class Formatter {
    static let shared = Formatter()
    func getDayForDate(_ date: Date?, format: String) -> String {
        guard let inputDate = date else {
            return ""
        }
        
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: inputDate)
    }
}
