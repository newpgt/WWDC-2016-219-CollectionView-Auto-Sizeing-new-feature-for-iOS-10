//
//  MyCollectionViewController.swift
//  CollectionView3
//
//  Created by NeoZ on 22/6/16.
//  Copyright © 2016年 NeoZ. All rights reserved.
//

import UIKit

private let reuseIdentifier = "MyCell"

class MyCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        //self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
        
        if #available(iOS 10.0, *) {
            (self.collectionView!.collectionViewLayout as! UICollectionViewFlowLayout).estimatedItemSize  = UICollectionViewFlowLayoutAutomaticSize

        } else {
            // Fallback on earlier versions
            (self.collectionView!.collectionViewLayout as! UICollectionViewFlowLayout).estimatedItemSize  = CGSize(width: 100, height: 30)
        }
 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return array1.count
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let string = array1[section]
        let stringArray = string.characters.split{$0 == " "}.map(String.init)
        return stringArray.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
    
        if let labelText = cell.viewWithTag(111) as? UILabel {
            //labelText.text = "hello\(indexPath.row)"
            
            let string = array1[indexPath.section]
            let stringArray = string.characters.split{$0 == " "}.map(String.init)
            labelText.text = stringArray[indexPath.row]
            //labelText.text = "heklllllll;;ppp"
        }
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: AnyObject?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: AnyObject?) {
    
    }
    */
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        
        if let labelText = cell!.viewWithTag(111) as? UILabel {
            print("labelText.text:\(labelText.text!)")
        }
        
        print("selected:\(indexPath)")
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
            
        case UICollectionElementKindSectionHeader:
            
            let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "Header", for: indexPath) 
            
            if let labelText = headerView.viewWithTag(222) as? UILabel {
                //print("labelText.text:\(labelText.text!)")
                labelText.text = "Section:\(indexPath)"
            }
            
            //headerView.backgroundColor = UIColor.blue();
            return headerView
            
//        case UICollectionElementKindSectionFooter:
//            let footerView = collectionView.dequeueReusableSupplementaryViewOfKind(kind, withReuseIdentifier: "Footer", forIndexPath: indexPath) as! UICollectionReusableView
//            
//            footerView.backgroundColor = UIColor.greenColor();
//            return footerView
            
        default:
            
            assert(false, "Unexpected element kind")
        }

    }

    
}
