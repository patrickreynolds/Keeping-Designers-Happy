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
    
    @IBOutlet internal weak var priceView: UIView!
    @IBOutlet internal weak var priceLabel: UILabel!
    @IBOutlet internal weak var currencyLabel: UILabel!
    @IBOutlet internal weak var frequencyLabel: UILabel!
    
    @IBOutlet internal weak var infoContainer: UIView!
    @IBOutlet internal weak var cityLabel: UILabel!
    @IBOutlet internal weak var countryLabel: UILabel!

    @IBOutlet internal weak var hostImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        Stylesheet.prepare(self)
    }
    
    override func setHighlighted(highlighted: Bool, animated: Bool) {
        super.setHighlighted(highlighted, animated: animated)
        if highlighted {
            priceView.backgroundColor = CityScapeColorStyle.LocationPriceContainerBackground.color
        }
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if selected {
            priceView.backgroundColor = CityScapeColorStyle.LocationPriceContainerBackground.color
        }
    }

    func updateCell(location: CityScapeLocation) {
        cityImageView.setAsync(location.image)
        
        priceLabel.text = location.price
        currencyLabel.text = location.currency
        frequencyLabel.text = location.frequency

        cityLabel.text = location.city
        countryLabel.text = location.country
        hostImageView.setAsync(location.hostImage)
    }
}