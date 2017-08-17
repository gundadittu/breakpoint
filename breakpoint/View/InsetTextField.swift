//
//  InsetTextField.swift
//  breakpoint
//
//  Created by Aditya Gunda on 8/16/17.
//  Copyright © 2017 Aditya Gunda. All rights reserved.
//

import UIKit

class InsetTextField: UITextField {

    private var padding = UIEdgeInsetsMake(0, 20, 0, 0)
    
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    
    override func awakeFromNib() {
        setUpView()
        super.awakeFromNib()
    }
    
    func setUpView() {
        let placeholder = NSAttributedString(string: self.placeholder!, attributes: [NSAttributedStringKey.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
        self.attributedPlaceholder = placeholder
    }

}
