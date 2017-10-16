//
//  ViewController.swift
//  CollectionImages
//
//  Created by Satyam Saluja on 01/10/17.
//  Copyright © 2017 Satyam Saluja. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    @IBOutlet weak var myCollectionView: UICollectionView!
    var imagesCollection:[String]=["1","2","3","1","2","3","1","2","3","1","2","3","1","2","3","1","2","3","1","2","3","1","2","3","1","2","3"]
    override func viewDidLoad() {
        super.viewDidLoad()
        let itemSize=UIScreen.main.bounds.width/3-3
        let layout=UICollectionViewFlowLayout()
        layout.sectionInset=UIEdgeInsetsMake(10, 0, 10, 0)
        layout.itemSize=CGSize(width: itemSize, height: itemSize)
        layout.minimumInteritemSpacing=3
        layout.minimumLineSpacing=3
        myCollectionView.collectionViewLayout=layout
        
        myCollectionView.dataSource=self
        myCollectionView.delegate=self
        // Do any additional setup after loading the view, typically from a nib.
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagesCollection.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell=collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! myCellCollectionViewCell
        cell.myImageView.image=UIImage(named:imagesCollection[indexPath.row])
        cell.backgroundColor=UIColor.blue
        return cell
        
        
        
        
        
        
    }
    


}

