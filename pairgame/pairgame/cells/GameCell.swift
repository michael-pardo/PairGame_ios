//
//  GameCell.swift
//  pairgame
//
//  Created by Michael Pardo  on 12/10/19.
//  Copyright © 2019 Michael Pardo . All rights reserved.
//

import UIKit

class GameCell: UICollectionViewCell {
    
    @IBOutlet weak var card: UIImageView!
    var isOpen = false
    
    func clickCard() {
//        let image  = UIImage(named: "otro")
        if isOpen {
            isOpen = false
            let image = UIImage(named: "lol")
            card.image = image
            UIView.transition(with: card, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
        }else{
            isOpen = true
            let image = UIImage(named: "otro")
            card.image = image
            UIView.transition(with: card, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
        }
        
    }
}
