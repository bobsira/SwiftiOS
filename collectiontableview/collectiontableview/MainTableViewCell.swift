//
//  MainTableViewCell.swift
//  collectiontableview
//
//  Created by bobsirasira on 22/01/2019.
//  Copyright © 2019 bobsirasira. All rights reserved.
//

import UIKit

class MainTableViewCell: UITableViewCell {
    @IBOutlet weak var clCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension MainTableViewCell {
    
    func setCollectionViewDataSourceDelegate<D: UICollectionViewDataSource & UICollectionViewDelegate>(_ dataSourceDelegate: D, forRow row: Int) {
        
        clCollectionView.delegate = dataSourceDelegate
        clCollectionView.dataSource = dataSourceDelegate
        clCollectionView.tag = row
        clCollectionView.setContentOffset(clCollectionView.contentOffset, animated:false) // Stops collection view if it was scrolling.
        clCollectionView.reloadData()
    }
    
    var collectionViewOffset: CGFloat {
        set { clCollectionView.contentOffset.x = newValue }
        get { return clCollectionView.contentOffset.x }
    }
}
