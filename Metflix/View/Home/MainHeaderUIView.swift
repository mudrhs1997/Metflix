//
//  MainHeaderView.swift
//  Metflix
//
//  Created by 정명곤 on 2022/10/11.
//

import UIKit

class MainHeaderUIView: UIView {

    private let headerImage: UIImageView = {
        var image = UIImageView()
        image.image = UIImage(named: "image")
        image.clipsToBounds = true
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    private let playButton: UIButton = {
        var button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .white
        return button
    }()
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        addSubview(headerImage)
        addSubview(playButton)
        headerImage.frame = bounds
        headerImage.gradient()
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)


    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
