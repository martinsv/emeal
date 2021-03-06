//
//  MenuTableViewController.swift
//  Emeal
//
//  Created by Kilian Költzsch on 20/03/15.
//  Copyright (c) 2015 kilian.io. All rights reserved.
//

import UIKit

class MenuTVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

		let colors = Colors()
		view.backgroundColor = UIColor.clearColor()
		var backgroundLayer = colors.gl
		backgroundLayer.frame = view.frame
		view.layer.insertSublayer(backgroundLayer, atIndex: 0)

		DataController.getMensaMenu { (htmlString) -> () in
			println(DataController.parseMensenList(htmlString))
		}
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 0
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return 0
    }

	
}
