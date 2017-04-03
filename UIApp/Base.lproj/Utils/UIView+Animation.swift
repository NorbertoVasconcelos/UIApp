//
//  UIView+Animation.swift
//  UIApp
//
//  Created by Norberto Vasconcelos on 03/03/2017.
//  Copyright © 2017 Norberto Vasconcelos. All rights reserved.
//

import UIKit

enum AnimationType {
    case expand
    case compress
    case animateToDefault
}

enum Duration: Double {
    case short = 0.075
    case medium = 0.1
    case long = 0.3
    case extraLong = 0.5
}

extension UIView {
    
    // MARK: - Scale Animations
    func pop() {
        expand {
            self.compress {
                self.animateToDefaultSize { }
            }
        }
//        let animateToDefault = animate(animationType: .animateToDefault, duration: .short, completion: () -> ())
//        let compress = animate(animationType: .compress, duration: .short, completion: animateToDefault{})
//        animate(animationType: .expand, duration: .short, completion: compress)
    }
    
    func expand(completion: @escaping () -> ()) {
        UIView.animate(withDuration: 0.075,
                       animations: {
                        self.transform = CGAffineTransform(scaleX: 1.1, y: 1.1);
        },
                       completion: { _ in
                       completion()
        })
    }
    
    func compress(completion: @escaping () -> ()) {
        UIView.animate(withDuration: 0.075,
                       animations: {
                        
        },
                       completion: { _ in
                        completion()
        })
    }
    
    func animateToDefaultSize(completion: @escaping () -> ()) {
        UIView.animate(withDuration: 0.075,
                       animations: {
                        // animate it to the identity transform (100% scale)
                        self.transform = CGAffineTransform.identity;
        },
                       completion: { _ in
                        completion()
        })
    }
    
    // MARK: - Opacity Animations
    func fade() {
        
    }
    
    // MARK: - General Animation
    func animate(animationType: AnimationType,
                 duration: Duration,
                 completion: @escaping () -> ()) {
        UIView.animate(withDuration: duration.rawValue,
                       animations: {
                        
                        switch animationType {
                        case .expand:
                            self.transform = CGAffineTransform(scaleX: 1.1, y: 1.1);
                            break
                        case .compress:
                            self.transform = CGAffineTransform(scaleX: 0.9, y: 0.9);
                            break
                        case .animateToDefault:
                            self.transform = CGAffineTransform.identity;
                            break
                        }
                        
        },
                       completion: { _ in
                        completion()
        })
    }
    
}
