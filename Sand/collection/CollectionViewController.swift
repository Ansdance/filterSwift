//
//  CollectionViewController.swift
//  Sand
//
//  Created by ANSAR DAULETBAYEV on 01.03.2023.
//

import UIKit

class CollectionViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let data = ["Film 1", "Film 2", "Film 3", "Film 4", "Film 5"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
//        collectionView.register(UINib(nibName: "ColCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ColCollectionViewCell")
    }
    
    
    
    
    
}

extension CollectionViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ColCollectionViewCell", for: indexPath) as! ColCollectionViewCell
        cell.setDataPop(film: data[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 200)
    }
    
}
