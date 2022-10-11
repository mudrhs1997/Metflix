//
//  ContentsListTableViewCell.swift
//  Metflix
//
//  Created by 정명곤 on 2022/10/11.
//

import UIKit
import SnapKit

class ContentsListTableViewCell: UITableViewCell {
    
    private let image: UIImageView = {
        var imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(systemName: "plus")
        return imageView
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        
//        contentView.addSubview(image)
        
//        image.snp.makeConstraints { img in
//            img.left.equalTo(contentView.snp.left).offset(10)
//        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init Error")
    }

}
