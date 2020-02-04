//
//  LoginVC.swift
//  pairgame
//
//  Created by Michael Pardo  on 17/11/19.
//  Copyright © 2019 Michael Pardo . All rights reserved.
//

import UIKit

class LoginVC: UIViewController,UITextFieldDelegate{

    @IBOutlet weak var registerTxt: UILabel!
    
    @IBOutlet weak var emailTF: FloatingTextField!
    @IBOutlet weak var passwdTF: FloatingTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        let registerClickTAP = UITapGestureRecognizer(target: self, action: #selector(registerClick))
        registerTxt.addGestureRecognizer(registerClickTAP)
        emailTF.delegate = self
        passwdTF.delegate = self
        // Do any additional setup after loading the view.
    }
    
    @objc func registerClick(){
        performSegue(withIdentifier: "loginToRegister", sender: self)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
           
           if let nextField = textField.superview?.viewWithTag(textField.tag + 1) as? UITextField {
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
