//
//  iPhoneDimensions.swift
//  
//
//  Created by Jakub Florek on 29/11/2021.
//

import SwiftUI

struct iPhoneDimensions {
    static let screenHeight = UIScreen.main.bounds.height
    
    static var spacing: CGFloat {
        return 60
    }
    
    static var topPadding: CGFloat {
        return 80
    }
    
    static var horizontalPaddingAddend: CGFloat {
        return 20
    }
}
