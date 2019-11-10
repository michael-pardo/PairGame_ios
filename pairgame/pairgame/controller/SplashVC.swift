//
//  SplashVC.swift
//  pairgame
//
//  Created by Michael Pardo  on 12/10/19.
//  Copyright © 2019 Michael Pardo . All rights reserved.
//

import UIKit

class SplashVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let verticalSafeAreaInset: CGFloat
        if #available(iOS 11.0, *) {
          verticalSafeAreaInset = self.view.safeAreaInsets.bottom + self.view.safeAreaInsets.top
        } else {
          verticalSafeAreaInset = 0.0
        }
        let safeAreaHeight = self.view.frame.height - verticalSafeAreaInset
        print(safeAreaHeight)
        

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    
        
        performSegue(withIdentifier: "splashSegue", sender: self)
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
