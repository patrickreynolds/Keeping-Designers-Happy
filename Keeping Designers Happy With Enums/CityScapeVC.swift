//
//  CityScapeVC.swift
//  Keeping Designers Happy With Enums
//
//  Created by Patrick Reynolds on 4/24/16.
//  Copyright © 2016 Patrick Reynolds. All rights reserved.
//

import UIKit

class CityScapeVC: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    let locations = CityScapeLocations().locations
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        setupTableView()
    }
    
    private func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.registerNib(UINib(nibName: String(CityScapeTableViewCell), bundle: nil), forCellReuseIdentifier:String(CityScapeTableViewCell))
        tableView.separatorColor = CityScapeColor.Clear.color
        tableView.separatorStyle = .None
    }
}

extension CityScapeVC: UITableViewDelegate {
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCellWithIdentifier(String(CityScapeTableViewCell)) as? CityScapeTableViewCell else {
            return UITableViewCell()
        }
        
        if let location = locations.safeIndex(indexPath.row) {
            cell.updateCell(location)
        }
        
        return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return Stylesheet.LocationCard.Height
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
}

extension CityScapeVC: UITableViewDataSource {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return locations.count
    }
}
