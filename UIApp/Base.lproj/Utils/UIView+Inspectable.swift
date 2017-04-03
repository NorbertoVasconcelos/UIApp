//
//  UIView+Inspectable.swift
//  UIApp
//
//  Created by Norberto Vasconcelos on 03/03/2017.
//  Copyright © 2017 Norberto Vasconcelos. All rights reserved.
//

import UIKit

extension UIView {
    
    // MARK: - Corners
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    // MARK: - Shadows
    @IBInspectable var shadowRadius: Double {
        get {
            return Double(self.layer.shadowRadius)
        }
        set {
            self.layer.shadowRadius = CGFloat(newValue)
        }
    }
    
    // The opacity of the shadow. Defaults to 0. Specifying a value outside the [0,1] range will give undefined results. Animatable.
    @IBInspectable var shadowOpacity: Float {
        get {
            return self.layer.shadowOpacity
        }
        set {
            self.layer.shadowOpacity = newValue
        }
    }
    
    // The shadow offset. Defaults to (0, -3). Animatable.
    @IBInspectable var shadowOffset: CGSize {
        get {
            return self.layer.shadowOffset
        }
        set {
            self.layer.shadowOffset = newValue
        }
    }
    
    // The color of the shadow. Defaults to opaque black. Colors created from patterns are currently NOT supported. Animatable.
    @IBInspectable var shadowColor: UIColor? {
        get {
            return UIColor(cgColor: self.layer.shadowColor ?? UIColor.clear.cgColor)
        }
        set {
            self.layer.shadowColor = newValue?.cgColor
        }
    }
    
    // Off - Will show shadow | On - Won't show shadow.
    @IBInspectable var masksToBounds: Bool {
        get {
            return self.layer.masksToBounds
        }
        
        set {
            self.layer.masksToBounds = newValue
        }
    }
    
}
