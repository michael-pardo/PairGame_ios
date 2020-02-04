//
//  RegisterVC.swift
//  pairgame
//
//  Created by Michael Pardo  on 16/12/19.
//  Copyright © 2019 Michael Pardo . All rights reserved.
//

import UIKit

class RegisterVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var passwdTF: FloatingTextField!
    @IBOutlet weak var scrollRegister: UIScrollView!
    
    @IBOutlet weak var emailTF: FloatingTextField!
    @IBOutlet weak var nameTF: FloatingTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        textFDele()

        
        // Do any additional setup after loading the view.
    }
    
    func textFDele() {
        nameTF.delegate = self
        emailTF.delegate = self
        passwdTF.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if let nextField = textField.superview?.viewWithTag(textField.tag + 1) as? UITextField {
            scrollRegister.setContentOffset(nextField.frame.origin, animated: true)
            
           nextField.becomeFirstResponder()
        } else {
           // Not found, so remove keyboard.
           textField.resignFirstResponder()
        }
        // Do not add a line break
        return false
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
