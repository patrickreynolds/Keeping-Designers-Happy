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
        // MARK: Location Attributes
        infoContainer.backgroundColor = CityScapeColorStyle.ImageInfoBackground.color

        cityLabel.text = location.city
        cityLabel.font = CityScapeFont.TextLight.font(Stylesheet.DefaultHeadingFontSize)
        cityLabel.textColor = CityScapeColorStyle.ImageTitle.color

        countryLabel.text = location.country
        countryLabel.font = CityScapeFont.TextRegular.font(Stylesheet.DefaultSubtitleFontSize)
        countryLabel.textColor = CityScapeColorStyle.ImageSubtitle.color

        cityImageView.setAsync(CityScapeImage(rawValue: location.city)?.image())

        // MARK: Price Information Attributes
        priceView.backgroundColor = CityScapeColorStyle.LocationPriceContainerBackground.color

        priceLabel.text = location.price
        priceLabel.font = CityScapeFont.TextRegular.font(Stylesheet.LocationCard.HeadingFontSize)
        priceLabel.textColor = CityScapeColorStyle.LocationPriceContainerFontColor.color

        currencyLabel.text = location.currency
        currencyLabel.font = CityScapeFont.TextMedium.font(Stylesheet.LocationCard.PriceSubtitleSize)
        currencyLabel.textColor = CityScapeColorStyle.LocationPriceContainerFontColor.color

        frequencyLabel.text = location.frequency
        frequencyLabel.font = CityScapeFont.TextMedium.font(Stylesheet.LocationCard.PriceSubtitleSize)
        frequencyLabel.textColor = CityScapeColorStyle.LocationPriceContainerFontColor.color

        // MARK: Host Image Attributes
        hostImageView.layer.borderColor = CityScapeColor.White.color.CGColor
        hostImageView.layer.borderWidth = Stylesheet.LocationCard.HostImageBorderWidth
        hostImageView.layer.cornerRadius = hostImageView.frame.height / 2
        hostImageView.clipsToBounds = true
        hostImageView.setAsync(location.hostImage)
    }
}
