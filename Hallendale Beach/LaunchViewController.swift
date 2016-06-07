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
    @IBOutlet weak var launchWebView: UIWebView!
    @IBOutlet weak var backButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cellInfo = NSMutableArray()
        
        cellInfo.addObject(CellInfo(initIconText: "icon-newspaper", initTitleText: "Public Records", initDescriptionText: "Submit a Public Records Request (Please note this is not a requirement).", initWebURL: "https://hbeach.formstack.com/forms/publicrecordsrequest"))
        cellInfo.addObject(CellInfo(initIconText: "icon-chatbubbles", initTitleText: "Public Comments", initDescriptionText: "Sign up to speak at the next Commission meeting.", initWebURL: "https://hbeach.formstack.com/forms/publicparticipation"))
        cellInfo.addObject(CellInfo(initIconText: "icon-guestbook", initTitleText: "Visitor Tracker", initDescriptionText: "This app allows visitors to register their visits with City Officials.", initWebURL: "http://www.cohb.org/visit"))
        cellInfo.addObject(CellInfo(initIconText: "icon-calendar", initTitleText: "Calendar", initDescriptionText: "View upcoming meeting details/agendas.", initWebURL: "http://www.cohb.org/index.aspx?NID=226"))
        cellInfo.addObject(CellInfo(initIconText: "icon-info", initTitleText: "About Us", initDescriptionText: "Learn more about Hallandale Beach.", initWebURL: "http://www.cohb.org/index.aspx?NID=16"))
        
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
        let curInfo = cellInfo.objectAtIndex(indexPath.row) as! CellInfo
        
        let url = curInfo.webURL
        let request = NSURLRequest(URL: NSURL(string: url)!)
        launchWebView.loadRequest(request)
        launchWebView.hidden = false
        backButton.hidden = false
        self.view.bringSubviewToFront(launchWebView)
    }
    
    @IBAction func closeWebView() {
        launchWebView.hidden = true
        backButton.hidden = true
    }
}

