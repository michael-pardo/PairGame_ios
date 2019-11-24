//
//  GameVC.swift
//  pairgame
//
//  Created by Michael Pardo  on 12/10/19.
//  Copyright © 2019 Michael Pardo . All rights reserved.
//

import UIKit

class GameVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet weak var viewCollection: UIView!
    
    @IBOutlet weak var collectionView: UICollectionView!
    var seleccionada = -1
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        let imageSize = UIScreen.main.bounds.width/3 - 3
        //  let height3 = UIScreen.main.bounds.height/3 - 3
        let height3 = UIScreen.main.bounds.height/3 - 3
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 1, bottom: 5, right: 1)
        layout.itemSize = CGSize(width: imageSize, height: height3)
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 5
        layout.headerReferenceSize = CGSize(width: 1, height: 1)
        collectionView.collectionViewLayout = layout
        
        
          

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 9
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "gameCell", for: indexPath) as! GameCell
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as! GameCell
        if seleccionada == indexPath.row {
            
        }else{
            cell.clickCard()
            seleccionada = indexPath.row
        }
        
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        
//        let verticalSafeAreaInset: CGFloat
//        if #available(iOS 11.0, *) {
//          verticalSafeAreaInset = self.view.safeAreaInsets.bottom + self.view.safeAreaInsets.top
//        } else {
//          verticalSafeAreaInset = 0.0
//        }
//        let safeAreaHeight = self.view.frame.height - verticalSafeAreaInset + 1
//
//        let windowHeigh = UIApplication.shared.keyWindow?.safeAreaLayoutGuide.layoutFrame.height
//
//        let imageSize = UIScreen.main.bounds.width/3 - 3
//
//        print(viewCollection.frame.size)
//
//        let height3 = (safeAreaHeight ?? UIScreen.main.bounds.width) / 3
//        print(safeAreaHeight,self.view.frame.height,self.navigationController!.navigationBar.frame.size.height)
//        //let height3 = CGFloat(200.0)
//        let layout = UICollectionViewFlowLayout()
//        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
//        layout.itemSize = CGSize(width: imageSize, height: height3)
//        layout.minimumInteritemSpacing = 0
//        layout.minimumLineSpacing = 0
//        layout.headerReferenceSize = CGSize(width: 0, height: 0)
//        collectionView.collectionViewLayout = layout
    }
    
    

}
