//
//  SignupViewController.swift
//  UIApp
//
//  Created by Norberto Vasconcelos on 16/02/2017.
//  Copyright © 2017 Norberto Vasconcelos. All rights reserved.
//

import UIKit

class SignupViewController: UIViewController {

    @IBOutlet weak var imgProfile: UIImageView!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var tfReEnterPassword: UITextField!
    @IBOutlet weak var btnSignUp: UIButton!
    
    let defaultCornerRadius: CGFloat = 8
    
    override func viewDidLoad() {
        super.viewDidLoad()
        roundCorners()
        imgProfile.layer.cornerRadius = imgProfile.bounds.height/2
        addShadow(imgProfile)
    }
    
    func addShadow(_ view: UIView) {
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 1.0
        view.layer.shadowOffset = CGSize(width: 0, height: 2)
        view.layer.shadowRadius = 2
    }
    
    func roundCorners() {
        setDefaultCornerRadius(views: [tfEmail, tfPassword, tfReEnterPassword, btnSignUp])
    }
    
    func setDefaultCornerRadius(views: [UIView]) {
        for view in views {
            view.layer.cornerRadius = defaultCornerRadius
        }
    }
    

    @IBAction func btnDonePressed(_ sender: Any) {    }
    @IBAction func btnCancelPressed(_ sender: Any) {    }
    @IBAction func btnSignupPressed(_ sender: Any) {    }
}

