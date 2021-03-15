//
//  CommonTableViewCellWithXib.swift
//  TutorialView
//
//  Created by Fuma Tsuruoka on 2021/03/13.
//  Copyright © 2021 佐藤優. All rights reserved.
//

import UIKit

class CommonTableViewCellWithXib: UITableViewCell {

    @IBOutlet weak var cellName: UILabel!
    @IBOutlet weak var taskNo: UILabel!
    @IBOutlet weak var openViewHeight: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.createCell()
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    public func createCell(){
        
        
    }
    
}
