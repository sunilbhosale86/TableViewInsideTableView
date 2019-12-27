//
//  ParentTableViewCell.swift
//  TableViewInTableViewDemo
//
//  Created by Sunil Bhosale on 12/27/19.
//  Copyright © 2019 Sunil Bhosale. All rights reserved.
//

import UIKit

class ParentTableViewCell: UITableViewCell, UITableViewDataSource, UITableViewDelegate
{
    @IBOutlet weak var childTableView : UITableView? = nil
    private var items :  [[String:String]]!
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)

    }
    
    func configure(items : [[String:String]])
    {
        self.items = items
        childTableView?.reloadData()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.items.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 44.0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        if let cell  = tableView.dequeueReusableCell(withIdentifier: "ChildTableViewCell") as? ChildTableViewCell
        {
            cell.configure(item: items[indexPath.row])
            return cell
        }
        
        return UITableViewCell()
    }
}
