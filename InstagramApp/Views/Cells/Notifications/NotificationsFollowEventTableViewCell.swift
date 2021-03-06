//
//  NotificationsFollowEventTableViewCell.swift
//  InstagramApp
//
//  Created by Hana Jusufovic on 25/10/2020.
//  Copyright © 2020 Hana Jusufovic. All rights reserved.
//

import UIKit

protocol NotificationsFollowEventTableViewCellDelegate: AnyObject {
    func didTapFollowUnfollowButton(model: String)
}

class NotificationsFollowEventTableViewCell: UITableViewCell {

    static let identifier = "NotificationsFollowEventTableViewCell"
    
    weak var delegate: NotificationsFollowEventTableViewCellDelegate?
    
    private let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.masksToBounds = true
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    private let label: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.numberOfLines = 0
        return label
    }()
    
    private let followButton: UIButton = {
        let button = UIButton()
        return button
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.clipsToBounds = true
        contentView.addSubview(profileImageView)
        contentView.addSubview(label)
        contentView.addSubview(followButton)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configure(with model: String) {
        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        followButton.setTitle(nil, for: .normal)
        followButton.backgroundColor = nil
        followButton.layer.borderWidth = 0
        label.text = nil
        profileImageView.image = nil
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
}
