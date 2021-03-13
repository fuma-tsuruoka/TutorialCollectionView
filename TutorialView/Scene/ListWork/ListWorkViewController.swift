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
    let TODO = ["牛乳を買う", "掃除をする", "アプリ開発の勉強をする"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "CommonTableViewCellWithXib", bundle: nil), forCellReuseIdentifier: "CommonTableViewCellWithXib")

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TODO.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // セルを取得する
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CommonTableViewCellWithXib") as? CommonTableViewCellWithXib {
            cell.cellName.text = TODO[indexPath.row]
            let rowNo = indexPath.row + 1
            cell.taskNo.text = rowNo.description
            return cell
        }
        
        return UITableViewCell()
    }
    
    
    


}
