//
//  HomeTableViewCell.swift
//  Carrot
//
//  Created by Talha Baig on 9/17/16.
//  Copyright © 2016 Talha Baig. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    var myImageView = UIImageView()
    
    var picture: UIImage? {
        didSet{
            myImageView = UIImageView(frame: CGRectMake(0, 0, frame.width, frame.width))
            myImageView.clipsToBounds = true
            myImageView.contentMode = .ScaleAspectFit
            myImageView.image = picture
            addSubview(myImageView)
            self.selectionStyle = .None
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .None
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        myImageView.frame = CGRectMake(0, 0, frame.width, frame.width)
    }
    
}