//
//  WelcomeVC.swift
//  Member Id Project
//
//  Created by Nur Irfan Pangestu on 10/11/19.
//  Copyright © 2019 member.id.test. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController {
    
    @IBOutlet weak var tfInputEmail: UITextField!
    @IBOutlet weak var btnSignIn: UIButton!
    @IBOutlet weak var lblError: UILabel!
    
    var getInputEmail: String {
        if let value = self.tfInputEmail.text {
            return value
        }
        return ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setHelpers()
        self.setUI()
        self.setValidations()
    }
    
    private func setHelpers() {
        self.setupHideKeyboardWhenTappedAround()
        self.setHideToolbar()
    }
    
    private func setUI() {
        self.setUIButton()
    }
    
    private func setValidations() {
        
    }
    
    private func setUIButton() {
        self.btnSignIn.layer.cornerRadius = 4.0
        self.btnSignIn.layer.shadowColor = UIColor.black.cgColor
        self.btnSignIn.layer.shadowRadius = 2.0
        self.btnSignIn.layer.shadowOpacity = 0.15
        self.btnSignIn.layer.shadowOffset = CGSize(width:1, height:1)
    }
    
    private func validationEmail() -> Bool {
        return getInputEmail == "nurirppan@gmail.com"
    }
    
    private func isHiddenErrorMessage(valid: Bool = false, errorMessage: String = "") {
        self.lblError.isHidden = valid
        self.lblError.text = errorMessage
    }
    
    @IBAction func ButtonSignInTapped(_ sender: Any) {
        if validationEmail() {
            self.isHiddenErrorMessage(valid: true)
        } else {
            self.isHiddenErrorMessage(valid: false, errorMessage: "Email Address is not exists")
        }
    }
    

}



