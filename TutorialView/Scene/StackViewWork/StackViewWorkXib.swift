//
//  StackViewWorkXib.swift
//  TutorialView
//
//  Created by Fuma Tsuruoka on 2021/03/14.
//  Copyright © 2021 佐藤優. All rights reserved.
//

import UIKit

class StackViewWorkXib: UITableViewCell {
    
    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var consHeight: NSLayoutConstraint!
    
    private var textTmp: String = ""
    weak var viewController: ListWorkViewController?
    
    @IBAction func tap(_ sender: Any) {
 
        if(!textView.isHidden){
            textView.text = ""
        }else{
            textView.text = textTmp
        }
        
        UIView.transition(with: textView, duration: 1.0, options: [.transitionCrossDissolve], animations: { [self] in
            textView.isHidden = !textView.isHidden
        }) { [self] _ in
            notify()
        }
        
    }
    
    public func notify(){
        NotificationCenter.default.post(name: .hogeName, object: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        textTmp = textView.text
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
