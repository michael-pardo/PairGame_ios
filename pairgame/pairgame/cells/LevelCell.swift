//
//  LevelCell.swift
//  pairgame
//
//  Created by Michael Pardo  on 12/10/19.
//  Copyright © 2019 Michael Pardo . All rights reserved.
//

import UIKit

class LevelCell: UITableViewCell {

    @IBOutlet weak var txtLevel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
