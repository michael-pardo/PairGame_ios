//
//  LevelCell.swift
//  pairgame
//
//  Created by Michael Pardo  on 12/10/19.
//  Copyright © 2019 Michael Pardo . All rights reserved.
//

import UIKit

class LevelCell: UITableViewCell {

    @IBOutlet weak var btnLevel: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        btnLevel.backgroundColor = .clear
        btnLevel.layer.cornerRadius = 5
        btnLevel.layer.borderWidth = 1
        btnLevel.layer.borderColor = UIColor.white.cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func selectLevel(_ sender: UIButton) {
        
    }
}
