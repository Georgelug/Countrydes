//
//  CountryCollectionViewCell.swift
//  Countrydex
//
//  Created by Diplomado on 08/06/24.
//

import UIKit

class CountryCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var countryName: UILabel!
    @IBOutlet weak var flagImage: UIImageView!
    
    var country = Country(name: "", flagImage: "")
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configCell(country: Country){
        countryName.text = country.name
        flagImage.image = UIImage(named: country.flagImage)
        print(countryName.text ?? "text nada")
        print(flagImage.image ?? "img nada")
    }

}
