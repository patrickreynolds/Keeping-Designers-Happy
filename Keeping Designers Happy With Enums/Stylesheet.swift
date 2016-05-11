//
//  Stylesheet.swift
//  Keeping Designers Happy With Enums
//
//  Created by Patrick Reynolds on 4/24/16.
//  Copyright © 2016 Patrick Reynolds. All rights reserved.
//

import UIKit

// Stylesheet
struct Stylesheet {
    private init() {}
    
    static let DefaultHeadingFontSize: CGFloat = 20
    static let DefaultSubtitleFontSize: CGFloat = 14
    
    struct LocationCard {
        static let HeadingFontSize: CGFloat = Stylesheet.DefaultHeadingFontSize
        static let PriceSubtitleSize: CGFloat = 8
        static let HostImageBorderWidth: CGFloat = 2.0
        static let Height: CGFloat = 320
    }
    
    static func prepare(cell: CityScapeTableViewCell) {
        cell.infoContainer.backgroundColor = CityScapeColorStyle.ImageInfoBackground.color
        
        cell.priceView.backgroundColor = CityScapeColorStyle.LocationPriceContainerBackground.color
        
        cell.priceLabel.textColor = CityScapeColorStyle.LocationPriceContainerFontColor.color
        cell.priceLabel.font = CityScapeFont.TextRegular.font(LocationCard.HeadingFontSize)
        
        cell.currencyLabel.textColor = CityScapeColorStyle.LocationPriceContainerFontColor.color
        cell.currencyLabel.font = CityScapeFont.TextMedium.font(LocationCard.PriceSubtitleSize)
        
        cell.frequencyLabel.textColor = CityScapeColorStyle.LocationPriceContainerFontColor.color
        cell.frequencyLabel.font = CityScapeFont.TextMedium.font(LocationCard.PriceSubtitleSize)
        
        cell.cityLabel.font = CityScapeFont.TextLight.font(Stylesheet.DefaultHeadingFontSize)
        cell.cityLabel.textColor = CityScapeColorStyle.ImageTitle.color
        
        cell.countryLabel.font = CityScapeFont.TextRegular.font(Stylesheet.DefaultSubtitleFontSize)
        cell.countryLabel.textColor = CityScapeColorStyle.ImageSubtitle.color
        
        cell.hostImageView.layer.borderColor = CityScapeColor.White.color.CGColor
        cell.hostImageView.layer.borderWidth = LocationCard.HostImageBorderWidth
        cell.hostImageView.layer.cornerRadius = cell.hostImageView.frame.height / 2
        cell.hostImageView.clipsToBounds = true
    }
}

// Colors
enum CityScapeColor {
    case Heading
    case Subtitle
    case Background
    case Clear
    case White
    
    var color: UIColor {
        switch self {
        case .Heading:    return UIColor(hex: 0x5E605A)
        case .Subtitle:   return UIColor(hex: 0x838A8D)
        case .Background: return UIColor.blackColor()
        case .White:      return UIColor.whiteColor()
        case .Clear:      return UIColor.clearColor()
        }
    }
}

enum CityScapeColorStyle {
    case ImageTitle
    case ImageSubtitle
    case ImageInfoBackground
    case LocationPriceContainerBackground
    case LocationPriceContainerFontColor
    
    var color: UIColor {
        switch self {
        case .ImageTitle: return CityScapeColor.Heading.color
        case .ImageSubtitle: return CityScapeColor.Subtitle.color
        case .ImageInfoBackground: return CityScapeColor.White.color
        case .LocationPriceContainerFontColor: return CityScapeColor.White.color
        case .LocationPriceContainerBackground: return CityScapeColor.Background.color.colorWithAlphaComponent(0.72)
        }
    }
}

// Fonts
enum CityScapeFont: String {
    case TextLight   = ".SFUIText-Light"
    case TextItalic  = ".SFUIText-Italic"
    case TextRegular = ".SFUIText-Regular"
    case TextMedium  = ".SFUIText-Medium"
    
    func font(size: CGFloat) -> UIFont {
        return UIFont(name: rawValue, size: size)!
    }
}

// Images
enum CityScapeImage: String {
    case SanFrancisco = "San Francisco"
    case SanDiego     = "San Diego"
    case London       = "London"
    case NewYork      = "New York"
    case Interkalen   = "Interlaken"
    case Sydney       = "Sydney"
    
    func image() -> UIImage? {
        return UIImage(named: rawValue)
    }
}
