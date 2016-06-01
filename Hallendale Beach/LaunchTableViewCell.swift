//
//  LaunchTableViewCell.swift
//  Hallendale Beach
//
//  Created by Greg Salvesen on 5/31/16.
//  Copyright © 2016 Soccer5. All rights reserved.
//

import UIKit

class LaunchTableViewCell: UITableViewCell {
    
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}