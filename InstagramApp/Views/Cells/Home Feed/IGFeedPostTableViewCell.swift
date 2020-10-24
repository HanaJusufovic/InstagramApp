//
//  IGFeedPostTableViewCell.swift
//  InstagramApp
//
//  Created by Hana Jusufovic on 22/10/2020.
//  Copyright © 2020 Hana Jusufovic. All rights reserved.
//

import UIKit

class IGFeedPostTableViewCell: UITableViewCell {

    static let identifier = "IGFeedPostTableViewCell"
    
    override init (style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
