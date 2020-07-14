//
//  StoryPhotoCell.swift
//  InstagramApp
//
//  Created by Andrew on 14.07.2020.
//  Copyright © 2020 com.andrewShkuratov. All rights reserved.
//

import UIKit
import LBTATools

public let storiesCellWidth: CGFloat = 80

class StoryPhotoCell: LBTAListCell<String> {
    let avatar = UIImageView(image: UIImage(named: "avatar"), contentMode: .scaleAspectFill)
    let storiesView = UIView(backgroundColor: .darkGray)
    let userName = UILabel(text: "Lorem Ipsum")
    let storiesPadding: CGFloat = 3
    
    override func setupViews() {
        userName.numberOfLines = 0
        storiesView.stack(avatar).padTop(storiesPadding).padBottom(storiesPadding).padLeft(storiesPadding).padRight(storiesPadding)
        storiesView.layer.cornerRadius = storiesCellWidth / 2
        stack(storiesView.withHeight(storiesCellWidth), userName).withWidth(storiesCellWidth)
        avatar.layer.cornerRadius = (storiesCellWidth - 2 * storiesPadding) / 2
        storiesView.layer.borderWidth = 2
        storiesView.layer.borderColor = UIColor.black.cgColor
    }
}
