//
//  ViewController.swift
//  demo
//
//  Created by Mochen Liu on 15-4-9.
//  Copyright (c) 2015年 Mochen Liu. All rights reserved.
//

import UIKit

class CityCell: UITableViewCell {
    
    
    var cityName: UILabel?
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        cityName = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
        self.addSubview(cityName!)
        
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

