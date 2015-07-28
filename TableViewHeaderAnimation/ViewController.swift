//
//  ViewController.swift
//  TableViewHeaderAnimation
//
//  Created by Carl.Yang on 7/28/15.
//  Copyright (c) 2015 Carl.Yang. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var headerView: HeaderView?
    var tempHeaderView: HeaderView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //self.setupHeaderView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addTableViewHeader() {
        self.setupHeaderView()
        self.headerView?.moveOutContentView()
        
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            self.headerView?.moveCenterContentView()
            self.tableView.tableHeaderView = self.headerView
            
            
            
            }) { (finished) -> Void in
                
        }
    }
    
    func removeTableViewHeader() {
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            self.tempHeaderView = HeaderView(frame: self.headerView!.frame)
            self.view.addSubview(self.tempHeaderView!)
            self.tempHeaderView?.moveOutContentView()
            self.tableView.tableHeaderView = nil
            }) { (finished) -> Void in
                self.tempHeaderView?.removeFromSuperview()
        }
    }
    
    
    @IBAction func addButtonClick(sender: AnyObject) {
        self.addTableViewHeader()
    }
    
    @IBAction func removeButtonClick(sender: AnyObject) {
        self.removeTableViewHeader()
    }
    
    func setupHeaderView() {
        self.headerView = HeaderView(frame: CGRectMake(0, 0, self.view.frame.width, 100))
    }
}

