//
//  MyTableViewCell.swift
//  CustomTable 1.0
//
//  Created by Danny Nguyen on 9/2/16.
//  Copyright © 2016 Danny Nguyen. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    
    @IBOutlet weak var iHate: UILabel!
    @IBOutlet weak var grumpyCat: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
