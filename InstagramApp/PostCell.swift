//
//  PostCell.swift
//  InstagramApp
//
//  Created by Andrew on 14.07.2020.
//  Copyright © 2020 com.andrewShkuratov. All rights reserved.
//

import UIKit
import LBTATools

class PostCell: LBTAListCell<String> {
    let avatar = UIImageView(image: UIImage(named: "avatar"), contentMode: .scaleAspectFill)
    let name = UILabel(text: "Lorem Ipsum", font: .boldSystemFont(ofSize: 15), textColor: .black)
    let place = UILabel(text: "Osaka, Japan", textColor: .black)
    let mainImage = UIImageView(image: UIImage(named: "mainImage"), contentMode: .scaleAspectFill)
    let likeButton = UIButton(image: UIImage(named: "likeIcon")!, tintColor: .black)
    let commentButton = UIButton(image: UIImage(named: "commentIcon")!, tintColor: .black)
    let shareButton = UIButton(image: UIImage(named: "shareIcon")!, tintColor: .black)
    let saveButton = UIButton(image: UIImage(named: "saveIcon")!, tintColor: .black)
    let numberOfLikes = UILabel(text: "Liked: 13450", font: .boldSystemFont(ofSize: 15), textColor: .black)
    
    override func setupViews() {
        let iconsWidth: CGFloat = 25
        let post = UILabel(text: "\(name.text ?? "") Lorem ipsum dolor sit amet ;aoneof efalne wfaleiun klbegaw nfoewna lbwai aliwb joweba", textColor: .black)
        post.numberOfLines = 0
        stack(hstack(avatar.withWidth(30), stack(name, place), spacing: 8).padLeft(8).padTop(8).withHeight(38), mainImage.withHeight(150), hstack(likeButton.withWidth(iconsWidth), commentButton.withWidth(iconsWidth),  shareButton.withWidth(iconsWidth), UIView(), saveButton.withWidth(iconsWidth), spacing: 5).padLeft(8).padRight(8).withHeight(iconsWidth), stack(numberOfLikes.withHeight(20), post).padLeft(8), spacing: 8)
        avatar.layer.cornerRadius = 15
        self.backgroundColor = .white
    }
}
