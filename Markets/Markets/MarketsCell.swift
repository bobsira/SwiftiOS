//
//  MarketsCell.swift
//  Markets
//
//  Created by bobsirasira on 22/01/2019.
//  Copyright © 2019 bobsirasira. All rights reserved.
//

import UIKit

class MarketsCell: UITableViewCell {

    @IBOutlet weak var marketsCollectionView: UICollectionView!


}

extension MarketsCell {
    
    func setCollectionViewDataSourceDelegate<D: UICollectionViewDataSource & UICollectionViewDelegate>(_ dataSourceDelegate: D, forRow row: Int) {
        
        marketsCollectionView.delegate = dataSourceDelegate
        marketsCollectionView.dataSource = dataSourceDelegate
        marketsCollectionView.tag = row
        //marketsCollectionView.setContentOffset(collectionView.contentOffset, animated:false) // Stops collection view if it was scrolling.
        marketsCollectionView.reloadData()
    }
    
//    var collectionViewOffset: CGFloat {
//        set { marketsCollectionView.contentOffset.x = newValue }
//        get { return marketsCollectionView.contentOffset.x }
//    }
}

