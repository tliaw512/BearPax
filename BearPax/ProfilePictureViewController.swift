//
//  ProfilePictureViewController.swift
//  BearPax
//
//  Created by Tiffany Liaw on 4/24/17.
//  Copyright © 2017 Tiffany Liaw. All rights reserved.
//

import UIKit

class ProfilePictureViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     //   ProfileCollectionView.delegate = self
       // ProfileCollectionView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var ProfileCollectionView: UICollectionView!
    
    /*func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
     func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProfilePictureCollectionViewCell", for: indexPath) as! ProfilePictureCollectionViewCell
        return cell
    }
    

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ProfileToSign", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "ProfileToSign") {
            if let dest = segue.destination as? SignInViewController {
                //dest.pokemonArray = self.filteredArray
            }
        }
    }*/
}
