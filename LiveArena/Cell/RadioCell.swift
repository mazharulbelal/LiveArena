//
//  RadioCell.swift
//  LiveArena
//
//  Created by Mazharul Belal on 10/5/19.
//  Copyright © 2019 Mazharul Belal. All rights reserved.
//

import UIKit

class RadioCell: UITableViewCell {
    
    static let name = "RadioCell"
    
    @IBOutlet weak var ContainerView: UIView!
    @IBOutlet weak var FavButton : UIButton!
    @IBOutlet weak var PlayButton: UIButton!
    @IBOutlet weak var RadioImageView: UIImageView!
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
