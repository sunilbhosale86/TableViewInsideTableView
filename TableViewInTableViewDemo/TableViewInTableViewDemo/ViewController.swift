//
//  ViewController.swift
//  TableViewInTableViewDemo
//
//  Created by Sunil Bhosale on 12/27/19.
//  Copyright © 2019 Sunil Bhosale. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    @IBOutlet weak var parentTableView : UITableView? = nil
    var sections = [[String:[[String:String]]]]()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        setup()
    }
    
    func setup()
    {
        // Data
        let section1 = ["Items" : [["Title" : "Row 1"], ["Title" : "Row 2"]]]
        let section2 = ["Items" : [["Title" : "Row 1"], ["Title" : "Row 2"], ["Title" : "Row 3"]]]
        let section3 = ["Items" : [["Title" : "Row 1"], ["Title" : "Row 2"], ["Title" : "Row 3"], ["Title" : "Row 4"]]]
        sections.append(section1)
        sections.append(section2)
        sections.append(section3)
        
        // Register header
    }

    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return sections.count
    }

    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        // Calculate the height of parent cell.
        
        var cellHeight : CGFloat = 0.0
       
        let aSection = sections[indexPath.row]
        
        if let items = aSection["Items"]
        {
            cellHeight = CGFloat(44 * items.count)
        }
        
        return cellHeight
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        if let cell  = tableView.dequeueReusableCell(withIdentifier: "ParentTableViewCell") as? ParentTableViewCell
        {
            if let aSection = sections[indexPath.row] as? [String:[[String:String]]], let items = aSection["Items"]
            {
                cell.configure(items: items)
            }
                
            return cell
        }
        
        return UITableViewCell()
    }
}

