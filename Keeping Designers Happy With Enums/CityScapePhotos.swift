//
//  CityScapePhotos.swift
//  Keeping Designers Happy With Enums
//
//  Created by Patrick Reynolds on 4/30/16.
//  Copyright © 2016 Patrick Reynolds. All rights reserved.
//

import UIKit

struct CityScapeLocations {
    var locations: [CityScapeLocation] {
        return [
            CityScapeLocation(city: "San Francisco", country: "United States", favorited: true, price: "$99", currency: "USD", frequency: "PER NIGHT", hostname: "khris"),
            CityScapeLocation(city: "San Diego", country: "United States", favorited: true, price: "$99", currency: "USD", frequency: "PER NIGHT", hostname: "michael"),
            CityScapeLocation(city: "New York", country: "United States", favorited: true, price: "$99", currency: "USD", frequency: "PER NIGHT", hostname: "nayyer"),
            CityScapeLocation(city: "London", country: "United Kingdom", favorited: false, price: "£99", currency: "GBP", frequency: "PER NIGHT", hostname: "patrick"),
            CityScapeLocation(city: "Sydney", country: "Australia", favorited: false, price: "$99", currency: "AUD", frequency: "PER NIGHT", hostname: "khris"),
            CityScapeLocation(city: "Interlaken", country: "Switzerland", favorited: true, price: "CHF99", currency: "CHF", frequency: "PER NIGHT", hostname: "michael")
        ]
    }
}

struct CityScapeLocation {
    let city: String
    let country: String
    var favorited: Bool
    let price: String
    let currency: String
    let frequency: String
    let hostname: String
    
    var hostImage: UIImage? {
        return UIImage(named: hostname)
    }
}
