//
//  LoginVC.swift
//  pairgame
//
//  Created by Michael Pardo  on 17/11/19.
//  Copyright © 2019 Michael Pardo . All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var registerTxt: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let registerClickTAP = UITapGestureRecognizer(target: self, action: #selector(registerClick))
        registerTxt.addGestureRecognizer(registerClickTAP)

        // Do any additional setup after loading the view.
    }
    
    @objc func registerClick(){
        performSegue(withIdentifier: "loginToRegister", sender: self)
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
