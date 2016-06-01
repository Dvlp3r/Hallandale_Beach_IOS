//
//  ViewController.swift
//  Hallendale Beach
//
//  Created by Greg Salvesen on 5/31/16.
//  Copyright © 2016 Soccer5. All rights reserved.
//

import UIKit

class LaunchViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var cellInfo: NSMutableArray!
    @IBOutlet weak var launchTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cellInfo = NSMutableArray()
        
        cellInfo.addObject(CellInfo(initIconText: "icon-newspaper", initTitleText: "Public Records", initDescriptionText: "Text sentence here"))
        cellInfo.addObject(CellInfo(initIconText: "icon-chatbubbles", initTitleText: "Public Comments", initDescriptionText: "Text sentence here"))
        cellInfo.addObject(CellInfo(initIconText: "icon-guestbook", initTitleText: "Visitor Tracker", initDescriptionText: "This app allows visitors to register their visits with City Officials"))
        cellInfo.addObject(CellInfo(initIconText: "icon-calendar", initTitleText: "Calendar", initDescriptionText: "Find out what's happening in Hallandale Beach!"))
        cellInfo.addObject(CellInfo(initIconText: "icon-info", initTitleText: "About Us", initDescriptionText: "Learn more about Hallandale Beach"))
        
        launchTableView.delegate = self
        launchTableView.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(cellInfo.count)
        return cellInfo.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let launchCell = tableView.dequeueReusableCellWithIdentifier("launchCell", forIndexPath: indexPath) as! LaunchTableViewCell
        
        let curInfo = cellInfo.objectAtIndex(indexPath.row) as! CellInfo
        
        launchCell.icon.image = UIImage(named: curInfo.iconText)
        launchCell.titleLabel.text = curInfo.titleText
        launchCell.descriptionLabel.text = curInfo.descriptionText
        
        return launchCell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
}

