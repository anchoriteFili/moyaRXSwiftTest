//
//  LXFViewCell.swift
//  RxSwiftDemo
//
//  Created by zetafin on 2018/2/6.
//  Copyright © 2018年 LXF. All rights reserved.
//

import UIKit
import Reusable

class LXFViewCell: UITableViewCell, NibReusable  {
    
    @IBOutlet weak var picView: UIImageView!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var sourceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension LXFViewCell {
    static func cellHeigh() -> CGFloat {
        return 240
    }
}
