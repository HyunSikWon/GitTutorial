//
//  ViewController.swift
//  GitTutorial
//
//  Created by 원현식 on 2019/12/07.
//  Copyright © 2019 Hyunsik Won. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    var teams = [
        Team(teamName: "LA Dodgers", teamColor: "Blue"),
        Team(teamName: "St.Cardinars", teamColor: "Red"),
        Team(teamName: "Toronto Blue Jays", teamColor: "Blue"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "MAJOR LEAGUE BASEBALL"
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teams.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = teams[indexPath.row].teamName
        cell.detailTextLabel?.text = teams[indexPath.row].teamColor
        
        return cell
    }
    
}

extension ViewController: UITableViewDelegate {
    
}



