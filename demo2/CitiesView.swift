//
//  citiesView.swift
//  demo
//
//  Created by Mochen Liu on 15-4-9.
//  Copyright (c) 2015年 Mochen Liu. All rights reserved.
//

import UIKit

class CitiesView: UIViewController , UITableViewDataSource, UITableViewDelegate{
    
    var cityList:[String] = []
    
    @IBOutlet weak var tableView1: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView1.dataSource = self
        tableView1.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return cityList.count
    }
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        var cellid = "cityCell"
        var cell: CityCell? = tableView.dequeueReusableCellWithIdentifier(cellid) as? CityCell
        if cell == nil {
            NSLog("fail")
            cell = CityCell(style: UITableViewCellStyle.Default, reuseIdentifier: cellid)
        }
        cell?.cityName?.text = cityList[indexPath.row]
        return cell!
    }
}

