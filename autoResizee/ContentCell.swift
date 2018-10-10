//
//  ContentCell.swift
//  autoResizee
//
//  Created by AFFIXUS IMAC1 on 8/9/18.
//  Copyright © 2018 AFFIXUS IMAC1. All rights reserved.
//

import UIKit

class ContentCell: UITableViewCell {

    @IBOutlet weak var viewww: UIView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var add: UILabel!
    @IBOutlet weak var desc: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        viewww.layoutIfNeeded()
        viewww.sizeToFit()
        sizeToFit()
        layoutIfNeeded()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
