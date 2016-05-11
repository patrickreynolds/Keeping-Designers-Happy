//
//  UIImageViewExt.swift
//  Keeping Designers Happy With Enums
//
//  Created by Patrick Reynolds on 5/10/16.
//  Copyright © 2016 Patrick Reynolds. All rights reserved.
//

import UIKit

extension UIImageView {
    func setAsync(image: UIImage?) {
        guard let image = image else {
            return
        }
        
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0)) { [weak self] in
            dispatch_async(dispatch_get_main_queue()) { [weak self] in
                self?.image = image
            }
        }
    }
}
