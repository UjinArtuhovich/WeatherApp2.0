//
//  HourlyWeatherTableViewCell.swift
//  WeatherApp
//
//  Created by Ujin Artuhovich on 5/9/21.
//

import UIKit

class HourlyWeatherTableViewCell: UITableViewCell {
    @IBOutlet weak var collection: UICollectionView!
    private var weather = [Currently]()
    override func awakeFromNib() {
        super.awakeFromNib()
        collection.backgroundColor = Colors.myBlue
        collection.register(HourlyWeatherCollectionViewCell.nib(), forCellWithReuseIdentifier: HourlyWeatherCollectionViewCell.identifier)
        collection.delegate = self
        collection.dataSource = self
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(false, animated: false)
    }

    static let identifier = "HourlyWeatherTableViewCell"

    static func nib() -> UINib {
        return UINib(nibName: "HourlyWeatherTableViewCell",
                     bundle: nil)
    }
    func configure(weather: [Currently]) {
        self.weather = weather
    }
    
}
//MARK: Collection view in table view cell
extension HourlyWeatherTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 25
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HourlyWeatherCollectionViewCell.identifier, for: indexPath) as! HourlyWeatherCollectionViewCell
        cell.configure(weather: weather[indexPath.item])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 50, height: 100)
    }

    
    
}
