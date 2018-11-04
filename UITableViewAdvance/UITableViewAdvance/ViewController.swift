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
    
    var twoDimensionalArray = [
        ExpandableNames(isExpanded: true, names: ["Amy", "Bill", "Zack", "Steve", "Jack", "Jill", "Mary"]),
        ExpandableNames(isExpanded: true, names: ["Carl", "Chris", "Christina", "Cameron"]),
        ExpandableNames(isExpanded: true, names: ["David", "Dan"]),
        ExpandableNames(isExpanded: true, names: ["Patrick", "Patty"]),
        ExpandableNames(isExpanded: true, names: ["bob sirasira","tiffany orangi", "tiffany sirasira", "bob orangi"])
        ]
    
    
    var showIndexPaths = false
    
    @objc func handleShowIndexPath() {
        print("Attemping reload animation of indexPaths...")
        
        // build all the indexPaths we want to reload
        var indexPathsToReload = [IndexPath]()

        for section in twoDimensionalArray.indices {
            for row in twoDimensionalArray[section].names.indices {
                print(section, row)
                let indexPath = IndexPath(row: row, section: section)
                indexPathsToReload.append(indexPath)
            }
        }

        showIndexPaths = !showIndexPaths
        
        let animationStyle = showIndexPaths ? UITableView.RowAnimation.right : .left
    
        let isExpanded = twoDimensionalArray[0].isExpanded

        if isExpanded {
            tableView.reloadRows(at: indexPathsToReload, with: animationStyle)
        }
        
        
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
        
        let button = UIButton(type: .system)
        button.setTitle("Close", for: .normal)
        button.backgroundColor = .yellow
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        
        button.addTarget(self, action: #selector(handleExpandClose), for: .touchUpInside)
        button.tag = section
        return button
    }
    
    @objc func handleExpandClose(button: UIButton){
        print("Trying to expand and close section...")
        
        let section = button.tag
        
        //we'll try to close the section first by deleting the rows
        var indexPaths = [IndexPath]()
        for row in twoDimensionalArray[section].names.indices {
            print(0,row)
            let indexPath = IndexPath(row: row, section: section)
            indexPaths.append(indexPath)
        }
        
        let isExpanded = twoDimensionalArray[section].isExpanded
        twoDimensionalArray[section].isExpanded = !isExpanded
        
        button.setTitle(isExpanded ? "Open" : "Close", for: .normal)
        
        if isExpanded {
            tableView.deleteRows(at: indexPaths, with: .fade)
        } else {
            tableView.insertRows(at: indexPaths, with: .fade)
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 36
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return twoDimensionalArray.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if !twoDimensionalArray[section].isExpanded {
            return 0
        }
        return twoDimensionalArray[section].names.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)

        
        let name = twoDimensionalArray[indexPath.section].names[indexPath.row]
        
        cell.textLabel?.text = name
        
        if showIndexPaths {
            cell.textLabel?.text = "\(name)   Section:\(indexPath.section) Row:\(indexPath.row)"
        }
        
        return cell
    }

}

