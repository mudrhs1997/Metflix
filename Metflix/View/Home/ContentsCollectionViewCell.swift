//
//  ContentsListCollectionViewCell.swift
//  Metflix
//
//  Created by 정명곤 on 2022/10/15.
//

import UIKit
import SnapKit

class ContentsCollectionViewCell: UICollectionViewCell {
    static let identifier = "ContentsCollectionViewCell"
    
    private let image: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(systemName: "star")
        imageView.backgroundColor = .black
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(image)
        
        image.snp.makeConstraints { img in
            img.top.bottom.equalToSuperview()
            
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
