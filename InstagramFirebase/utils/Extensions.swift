//
//  Extensions.swift
//  InstagramFirebase
//
//  Created by OKUSANYA KAYODE DAMILARE on 7/20/18.
//  Copyright © 2018 OKUSANYA KAYODE DAMILARE. All rights reserved.
//

import UIKit

extension UIColor {
    /**
        A function that takes in red, blue, green value anc returns the equivalent color
     
     - Parameter red: The numeric value for red.
     - Parameter green: The numeric value for green.
     - Parameter blue: The numeric value for blue.
     
     - Returns: A color representation of the rgb values
    */
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
}



extension UIView {
    /**
      A convinent extension for NSLayoutConstraint used to anchor or constraint view to its heiarchy
    */
    
    func anchor(top: NSLayoutYAxisAnchor?,  bottom: NSLayoutYAxisAnchor? , left: NSLayoutXAxisAnchor?, right: NSLayoutXAxisAnchor?, centerX: NSLayoutXAxisAnchor?, centerY: NSLayoutYAxisAnchor? , paddingTop: CGFloat, paddingBottom: CGFloat, paddingLeft: CGFloat, paddingRight: CGFloat, heightConstant: CGFloat, widthConstant: CGFloat){
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            self.topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        
        if let bottom = bottom {
            self.bottomAnchor.constraint(equalTo: bottom, constant: -paddingBottom).isActive = true
        }
        
        if let left = left {
            self.leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
        }
        
        if let right = right {
            self.rightAnchor.constraint(equalTo: right, constant: -paddingRight).isActive = true
        }
        
        
        if let centerX = centerX {
            self.centerXAnchor.constraint(equalTo: centerX).isActive = true
        }
        
        
        if let centerY = centerY {
            self.centerYAnchor.constraint(equalTo: centerY).isActive = true
        }
        
        
        if heightConstant != 0 {
            self.heightAnchor.constraint(equalToConstant: heightConstant).isActive = true
        }
        
        if widthConstant != 0 {
            self.widthAnchor.constraint(equalToConstant: widthConstant).isActive = true
        }
        
    }
}
