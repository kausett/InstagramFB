//
//  ViewController.swift
//  InstagramFirebase
//
//  Created by OKUSANYA KAYODE DAMILARE on 7/20/18.
//  Copyright © 2018 OKUSANYA KAYODE DAMILARE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var addProfilePicture: UIButton = {
        let btn = UIButton(type: .system)
        btn.setImage(UIImage(named: "plus_photo")?.withRenderingMode(.alwaysOriginal), for: .normal)
        return btn
    }()
    
    var usernameTextField: UITextField = {
        let txtField = UITextField()
        txtField.placeholder = "Username"
        txtField.backgroundColor = UIColor(white: 0, alpha: 0.03)
        txtField.borderStyle = .roundedRect
        txtField.font = UIFont.systemFont(ofSize: 14)
        return txtField
    }()
    
    var emailTextField: UITextField = {
        let txtField = UITextField()
        txtField.placeholder = "Email"
        txtField.backgroundColor = UIColor(white: 0, alpha: 0.03)
        txtField.borderStyle = .roundedRect
        txtField.font = UIFont.systemFont(ofSize: 14)
        return txtField
    }()
    
    var passwordTextField: UITextField = {
        let txtField = UITextField()
        txtField.placeholder = "Password"
        txtField.backgroundColor = UIColor(white: 0, alpha: 0.03)
        txtField.borderStyle = .roundedRect
        txtField.isSecureTextEntry = true
        txtField.font = UIFont.systemFont(ofSize: 14)
        return txtField
    }()
    
    
    var signUpButton: UIButton = {
       let btn = UIButton(type: .system)
        btn.setTitle("SIGN UP", for: .normal)
        btn.backgroundColor = UIColor.rgb(red: 149, green: 204, blue: 244)
        btn.layer.cornerRadius = 5
        btn.setTitleColor(.white, for: .normal)
        btn.addTarget(self, action: #selector(handleSignup), for: .touchUpInside)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        return btn
    }()
    
    @objc func handleSignup() {
        print(123);
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Adding add profile picture button to the view.
        view.addSubview(addProfilePicture)
        
        
        addProfilePicture.anchor(top: view.safeAreaLayoutGuide.topAnchor, bottom: nil, left: nil, right: nil, centerX: view.centerXAnchor, centerY: nil, paddingTop: 60, paddingBottom: 0, paddingLeft: 0, paddingRight: 0, heightConstant: 140, widthConstant: 140)
        
        setUpInputFields()
        
    }
    
    
    fileprivate func setUpInputFields(){
        let signUpStack = UIStackView(arrangedSubviews: [usernameTextField, emailTextField, passwordTextField, signUpButton])
        signUpStack.distribution = .fillEqually
        signUpStack.spacing = 10
        signUpStack.axis = .vertical
        signUpStack.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(signUpStack)
        
        signUpStack.anchor(top: addProfilePicture.bottomAnchor, bottom: nil, left: view.safeAreaLayoutGuide.leftAnchor, right: view.safeAreaLayoutGuide.rightAnchor,centerX: nil, centerY: nil, paddingTop: 20, paddingBottom: 0, paddingLeft: 40, paddingRight: 40, heightConstant: 200, widthConstant: 0)
    }
}

