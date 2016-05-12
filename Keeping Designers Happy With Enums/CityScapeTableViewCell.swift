//
//  CityScapeTableViewCell.swift
//  Keeping Designers Happy With Enums
//
//  Created by Patrick Reynolds on 4/30/16.
//  Copyright © 2016 Patrick Reynolds. All rights reserved.
//

import UIKit

class CityScapeTableViewCell: UITableViewCell {
    @IBOutlet internal weak var cityImageView: UIImageView!

    // Price Details
    @IBOutlet internal weak var priceView: UIView!
    @IBOutlet internal weak var priceLabel: UILabel!
    @IBOutlet internal weak var currencyLabel: UILabel!
    @IBOutlet internal weak var frequencyLabel: UILabel!

    // Location Info
    @IBOutlet internal weak var infoContainer: UIView!
    @IBOutlet internal weak var cityLabel: UILabel!
    @IBOutlet internal weak var countryLabel: UILabel!
    @IBOutlet internal weak var hostImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        Stylesheet.prepare(self)
    }

    func updateCell(location: CityScapeLocation) {
        // MARK: Location Information
        cityLabel.text = location.city
        countryLabel.text = location.country
        cityImageView.setAsync(CityScapeImage(rawValue: location.city)?.image())
        hostImageView.setAsync(location.hostImage)

        // MARK: Price Information
        priceLabel.text = location.price
        currencyLabel.text = location.currency
        frequencyLabel.text = location.frequency
    }
}