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

    func updateCell(location: CityScapeLocation) {
        // MARK: Location Information
        infoContainer.backgroundColor = UIColor.whiteColor()
        
        cityLabel.text = location.city
        cityLabel.font = UIFont(name: ".SFUIText-Light", size: 20)
        cityLabel.textColor = UIColor(hex: 0x5E605A)
        
        countryLabel.text = location.country
        countryLabel.font = UIFont(name: ".SFUIText-Regular", size: 14)
        countryLabel.textColor = UIColor(hex: 0x838A8D)
        
        cityImageView.setAsync(CityScapeImage(rawValue: location.city)?.image())

        // MARK: Price Information Attributes
        priceView.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.72)
        
        priceLabel.text = location.price
        priceLabel.font = UIFont(name: ".SFUIText-Regular", size: 20)
        priceLabel.textColor = UIColor.whiteColor()
        
        currencyLabel.text = location.currency
        currencyLabel.font = UIFont(name: ".SFUIText-Medium", size: 8)
        currencyLabel.textColor = UIColor.whiteColor()
        
        frequencyLabel.text = location.frequency
        frequencyLabel.font = UIFont(name: ".SFUIText-Medium", size: 8)
        frequencyLabel.textColor = UIColor.whiteColor()
        
        // MARK: Host Image Attributes
        hostImageView.layer.borderColor = UIColor.whiteColor().CGColor
        hostImageView.layer.borderWidth = 2.0
        hostImageView.layer.cornerRadius = hostImageView.frame.height / 2
        hostImageView.clipsToBounds = true
        
        hostImageView.setAsync(location.hostImage)
    }
}
