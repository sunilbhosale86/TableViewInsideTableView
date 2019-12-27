//
//  ChildTableViewCell.swift
//  TableViewInTableViewDemo
//
//  Created by Sunil Bhosale on 12/27/19.
//  Copyright © 2019 Sunil Bhosale. All rights reserved.
//

import UIKit

class ChildTableViewCell: UITableViewCell
{
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)
    }
    
    func configure(item: [String:String])
    {
        textLabel?.text = item["Title"]
    }
}
