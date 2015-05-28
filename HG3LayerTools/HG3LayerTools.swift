//
//  HG3LayerTools.swift
//  HG3LayerTools
//
//  Created by Hugo Gonzalez on 5/28/15.
//  Copyright (c) 2015 HG3. All rights reserved.
//

import Foundation

public enum LayerProperties {
    case CornerRadius, BorderColor, BorderWidth
}

public extension UIView {
    //MARK: Public Functions
    func setLayerProperties(layerProperties: [LayerProperties: AnyObject]) {
        if let val = layerProperties[.BorderWidth] as? CGFloat {
           self.layer.borderWidth = val
        }
        
        if let val = layerProperties[.BorderColor] as? UIColor {
            self.layer.borderColor = val.CGColor
        }
        
        if let val = layerProperties[.CornerRadius] as? CGFloat {
            self.layer.cornerRadius = val
        }
    }
}
