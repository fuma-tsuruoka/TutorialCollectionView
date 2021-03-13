//
//  ListWorkViewController.swift
//  TutorialView
//
//  Created by Fuma Tsuruoka on 2021/03/13.
//  Copyright © 2021 佐藤優. All rights reserved.
//

import UIKit

class ListWorkViewController: UIViewController ,UITableViewDelegate, UITableViewDataSource{
    
    let TODO = ["牛乳を買う", "掃除をする", "アプリ開発の勉強をする"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TODO.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // セルを取得する
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        // セルに表示する値を設定する
        cell.textLabel!.text = TODO[indexPath.row]
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }    
}
