//
//  CommonButton.swift
//  TutorialView
//
//  Created by Fuma Tsuruoka on 2021/03/13.
//  Copyright © 2021 佐藤優. All rights reserved.
//

import UIKit
@IBDesignable
class CommonButton: UIButton {
  override init(frame: CGRect) {
    super.init(frame: frame)
    customDesign()
  }
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    customDesign()
  }
  
  override func prepareForInterfaceBuilder() {
    super.prepareForInterfaceBuilder()
    customDesign()
  }
  
  private func customDesign() {
    // デザインのカスタマイズ内容
    
    // ボタンのマスク適用
    layer.masksToBounds = true
    // ボタンの角丸のサイズ
    layer.cornerRadius = 15.0
    // ボタンの枠線の色
    layer.borderColor = UIColor(displayP3Red: 79/255, green: 172/255, blue: 254/255,alpha: 1.0).cgColor
    // ボタンの枠線の太さ
    layer.borderWidth = 2
    // ボタンの余白（Padding）
    contentEdgeInsets = UIEdgeInsets(top: 10, left: 15, bottom: 10, right: 15)
    // ボタンの背景色
    backgroundColor = UIColor.white
    // ボタンのテキスト色
    setTitleColor(UIColor(displayP3Red: 79/255, green: 172/255, blue: 254/255,alpha: 1.0), for: .normal)
    // ボタンのテキストサイズ
    titleLabel?.font = UIFont.boldSystemFont(ofSize: 14.0)
  }
}
