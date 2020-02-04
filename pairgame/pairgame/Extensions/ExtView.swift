//
//  ExtView.swift
//  pairgame
//
//  Created by Michael Pardo Aguirre on 4/02/20.
//  Copyright © 2020 Michael Pardo . All rights reserved.
//

import UIKit
extension UIView{
    func textFieldDelegates() {
        for view in self.subviews {
            if let textField = view as? UITextField {
                textField.delegate = self as! UITextFieldDelegate
            }
        }
    }
}
