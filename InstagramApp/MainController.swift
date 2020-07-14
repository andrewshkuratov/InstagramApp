//
//  MainController.swift
//  InstagramApp
//
//  Created by Andrew on 12.07.2020.
//  Copyright © 2020 com.andrewShkuratov. All rights reserved.
//

import LBTATools
import UIKit

class MainController: LBTAListHeaderController<PostCell, String, StoryHeader>, UICollectionViewDelegateFlowLayout {
    override func viewDidLoad() {
        super.viewDidLoad()
        items = ["1", "2", "3", "4"]
        collectionView.backgroundColor = .init(white: 0.9, alpha: 1)
        setupNavBar()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return .init(width: 0, height: 115)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.bounds.width, height: 300)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        .init(top: 10, left: 0, bottom: 0, right: 0)
    }
    
    fileprivate func setupNavBar() {
        let width = view.frame.width - 120 - 16 - 60 - 60
        
        let titleView = UIView(backgroundColor: .clear)
        titleView.frame = .init(x: 0, y: 0, width: width, height: 50)
        
        //titleView.hstack(fbLogoImageView.withWidth(120), UIView().withWidth(width), searchButton.withWidth(60), messengerButton.withWidth(60))
        
        navigationItem.titleView = titleView
    }
}

import SwiftUI

struct MainPreview: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        typealias UIViewControllerType = UINavigationController
        func makeUIViewController(context: Context) -> UINavigationController {
            return UINavigationController(rootViewController: MainController())
        }
        
        func updateUIViewController(_ uiViewController: UINavigationController, context: Context) {
            
        }
    }
}
