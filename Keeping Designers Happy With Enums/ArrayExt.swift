//
//  ArrayExt.swift
//  Keeping Designers Happy With Enums
//
//  Created by Patrick Reynolds on 4/30/16.
//  Copyright © 2016 Patrick Reynolds. All rights reserved.
//

import Foundation

extension Array {
    public func safeIndex(i : Int) -> Element? {
        if i < self.count && i >= 0 {
            return self[i]
        } else {
            return nil
        }
    }
}
