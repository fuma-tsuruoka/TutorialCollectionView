//
//  StackViewWorkViewController.swift
//  TutorialView
//
//  Created by Fuma Tsuruoka on 2021/03/14.
//  Copyright © 2021 佐藤優. All rights reserved.
//

import UIKit

class StackViewWorkViewController: UIViewController{
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textTmp = textView.text
    }
    
    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var height: NSLayoutConstraint!
    
    var textTmp: String = ""
    
    @IBAction func tapped(_ sender: Any) {
        
        UIView.animate(withDuration: 0.3) { [self] in
            
            if(!textView.isHidden){
                textView.text = ""
            }else{
                textView.text = textTmp
            }
            
            textView.isHidden = !textView.isHidden

        }
    }

    
    
}
