//
//  FreewordTableViewCell.swift
//  GourmetSearch
//
//  Created by Kazunari Ueeda on 2018/08/08.
//  Copyright © 2018 植江田和成. All rights reserved.
//

import UIKit

class FreewordTableViewCell: UITableViewCell {

    @IBOutlet weak var freeword: UITextField!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
