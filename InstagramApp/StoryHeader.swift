//
//  StoryHeader.swift
//  InstagramApp
//
//  Created by Andrew on 14.07.2020.
//  Copyright © 2020 com.andrewShkuratov. All rights reserved.
//

import UIKit
import LBTATools

class StoryHeader: UICollectionReusableView {
    let storiesController = StoriesController(scrollDirection: .horizontal)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        stack(storiesController.view)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
