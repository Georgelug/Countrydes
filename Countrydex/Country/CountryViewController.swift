//
//  CountryViewController.swift
//  Countrydex
//
//  Created by Diplomado on 08/06/24.
//

import UIKit

class CountryViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    let countryModel = try! CountryModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        let layout = UICollectionViewFlowLayout()
        collectionView.collectionViewLayout = layout
        layout.scrollDirection = .vertical
        collectionView.register(UINib(nibName: "CountryCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell")
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

}

extension CountryViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        countryModel.getNumberOfCountries()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CountryCollectionViewCell
        
        
        let country = countryModel.getcountry(for: indexPath)
        
        cell.configCell(country: country!)
        cell.country = country!
        //collectionView.reloadData()
        return cell
        
    }
    
    
}

extension CountryViewController: UICollectionViewDelegateFlowLayout{
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 300, height: 450)
    }
    
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        let detail = TypeInfoViewController(nibName: "TypeInfoViewController", bundle: nil)
//        
//        detail.pokeType = pokeTypeModel.getPokeTypeFromPokeTypes(indexPath: indexPath)
//        
//        self.present(detail, animated: true)
//    }
}



