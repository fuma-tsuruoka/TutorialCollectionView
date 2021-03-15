//
//  ListWorkViewController.swift
//  TutorialView
//
//  Created by Fuma Tsuruoka on 2021/03/13.
//  Copyright © 2021 佐藤優. All rights reserved.
//

import UIKit

class ListWorkViewController: UIViewController ,UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var contentViewHeight: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "StackViewWorkXib", bundle: nil), forCellReuseIdentifier: "StackViewWorkXib")
        tableView.delegate = self
        NotificationCenter.default.addObserver(self, selector: #selector(self.reloadData(notification:)), name: .hogeName, object: nil)

    }
    
    
    @IBAction func rowAdd(_ sender: Any) {
        tableView.reloadData()
    }
    
    @objc func reloadData(notification: NSNotification?){
        tableView!.reloadData()
    }
   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // セルを取得する
        if let cell = tableView.dequeueReusableCell(withIdentifier: "StackViewWorkXib") as? StackViewWorkXib {
            
            return cell
        }
        
        return UITableViewCell()
    }

}

extension Notification.Name {
   static let hogeName = Notification.Name("tableNotification")
}
