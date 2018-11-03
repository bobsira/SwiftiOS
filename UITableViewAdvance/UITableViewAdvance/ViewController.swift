//
//  ViewController.swift
//  UITableViewAdvance
//
//  Created by bobsirasira on 03/11/2018.
//  Copyright © 2018 bobsirasira. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    let cellId = "cellId123123"
    
    let names = [
        "Amy", "Bill", "Zack", "Steve", "Jack", "Jill", "Mary"
    ]
    
    let cNames = [
        "Carl", "Chris", "Christina", "Cameron"
    ]
    
    let dNames = [
        "David", "Dan"
    ]
    
    let twoDimensionalArray = [
        ["Amy", "Bill", "Zack", "Steve", "Jack", "Jill", "Mary"],
        ["Carl", "Chris", "Christina", "Cameron"],
        ["David", "Dan"],
        ["Patrick", "Patty"],
        ["bob sirasira","tiffany orangi", "tiffany sirasira", "bob orangi"]
    ]
    
    var showIndexPaths = false
    
    @objc func handleShowIndexPath() {
        print("Attemping reload animation of indexPaths...")
        
        // build all the indexPaths we want to reload
        var indexPathsToReload = [IndexPath]()

        for section in twoDimensionalArray.indices {
            for row in twoDimensionalArray[section].indices {
                print(section, row)
                let indexPath = IndexPath(row: row, section: section)
                indexPathsToReload.append(indexPath)
            }
        }

        //        for index in twoDimensionalArray[0].indices {
        //            let indexPath = IndexPath(row: index, section: 0)
        //            indexPathsToReload.append(indexPath)
        //        }


        showIndexPaths = !showIndexPaths
        
        let animationStyle = showIndexPaths ? UITableView.RowAnimation.right : .left
    

        tableView.reloadRows(at: indexPathsToReload, with: animationStyle)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Show IndexPath", style: .plain, target: self, action: #selector(handleShowIndexPath))
        
        navigationItem.title = "Contacts"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        label.text = "Header"
        label.backgroundColor = UIColor.lightGray
        return label
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return twoDimensionalArray.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return twoDimensionalArray[section].count
        //        if section == 0 {
        //            return names.count
        //        }
        //        return cNames.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        
        //        let name = self.names[indexPath.row]
//        let name = indexPath.section == 0 ? names[indexPath.row] : cNames[indexPath.row]
        
        let name = twoDimensionalArray[indexPath.section][indexPath.row]
        
        cell.textLabel?.text = name
        
        if showIndexPaths {
            cell.textLabel?.text = "\(name)   Section:\(indexPath.section) Row:\(indexPath.row)"
        }
        
        return cell
    }

}

