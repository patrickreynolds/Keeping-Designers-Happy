//
//  Stylesheet.swift
//  Keeping Designers Happy With Enums
//
//  Created by Patrick Reynolds on 4/24/16.
//  Copyright © 2016 Patrick Reynolds. All rights reserved.
//

import UIKit

// MARK: - Stylesheet
struct Stylesheet {
    private init() {}
}

// MARK: - Colors
enum CityScapeColor {}

// MARK: Color Style
enum CityScapeColorStyle {}

// MARK: - Fonts
enum CityScapeFont {}

// MARK: - Images
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
