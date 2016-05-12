//
//  CityScapeTableViewCellExt.swift
//  Keeping Designers Happy With Enums
//
//  Created by Patrick Reynolds on 5/12/16.
//  Copyright © 2016 Patrick Reynolds. All rights reserved.
//

import UIKit

extension CityScapeTableViewCell {
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
}
