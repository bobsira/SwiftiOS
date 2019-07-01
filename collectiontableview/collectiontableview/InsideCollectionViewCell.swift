//
//  InsideCollectionViewCell.swift
//  collectiontableview
//
//  Created by bobsirasira on 22/01/2019.
//  Copyright © 2019 bobsirasira. All rights reserved.
//

import UIKit

protocol CollectionViewTappedDelegate {
    func didTapButton(cell: InsideCollectionViewCell)
}

class InsideCollectionViewCell: UICollectionViewCell {
    
    @IBAction func buttonTapped(_ sender: UIButton) {
    }
}
