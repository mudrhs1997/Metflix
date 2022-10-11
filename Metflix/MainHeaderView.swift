//
//  MainHeaderView.swift
//  Metflix
//
//  Created by 정명곤 on 2022/10/11.
//

import UIKit

class MainHeaderView: UIView {

    private let headerImage: UIImageView = {
        var image = UIImageView()
        image.image = UIImage(named: "image")
        image.translatesAutoresizingMaskIntoConstraints = false
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
    
    private func setConstraint() {
        addSubview(headerImage)
        addSubview(playButton)
        
        
        headerImage.frame = bounds
        
        playButton.snp.makeConstraints { btn in
            btn.left.equalTo(headerImage.snp.left).offset(10)
            btn.bottom.equalTo(headerImage.snp.bottom).offset(-10)
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        setConstraint()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
