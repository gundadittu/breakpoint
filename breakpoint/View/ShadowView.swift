//
//  ShadowView.swift
//  breakpoint
//
//  Created by Aditya Gunda on 8/16/17.
//  Copyright © 2017 Aditya Gunda. All rights reserved.
//

import UIKit

class ShadowView: UIView {
    
    override func awakeFromNib() {
        setUpView()
        super.awakeFromNib()
    }

    func setUpView() {
        self.layer.shadowOpacity = 0.75
        self.layer.shadowRadius = 5
        self.layer.shadowColor = UIColor.black.cgColor
    }
}
