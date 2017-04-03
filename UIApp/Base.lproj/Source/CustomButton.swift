//
//  CustomButton.swift
//  UIApp
//
//  Created by Norberto Vasconcelos on 03/03/2017.
//  Copyright © 2017 Norberto Vasconcelos. All rights reserved.
//

import UIKit

@IBDesignable
class CustomButton: UIButton {
    
    var btnAnimation: String?

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        animate()
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        
        endAnimation()
        
    }
    
    private func animate() {
        if let anim = btnAnimation {
            switch anim {
            case ButtonAnimationType.pop.rawValue:
                expand {}
            case ButtonAnimationType.fade.rawValue:
                fade()
                break
            case ButtonAnimationType.none.rawValue:
                break
            default:
                break
            }
        }
    }
    
    private func endAnimation() {
        if let anim = btnAnimation {
            switch anim {
            case ButtonAnimationType.pop.rawValue:
                compress {
                    self.animateToDefaultSize { }
                }
            case ButtonAnimationType.fade.rawValue:
                fade()
                break
            case ButtonAnimationType.none.rawValue:
                break
            default:
                break
            }
        }
    }
     

}

enum ButtonAnimationType: String {
    case pop = "pop"
    case fade = "fade"
    case none = "none"
}


extension CustomButton {
    
    @IBInspectable var animation: String {
        get {
            return ButtonAnimationType.fade.rawValue
        }
        
        set {
            btnAnimation = newValue.lowercased()
        }
    }
}
