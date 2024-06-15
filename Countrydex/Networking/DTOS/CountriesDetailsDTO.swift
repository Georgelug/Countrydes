//
//  CountriesDetails.swift
//  Countrydex
//
//  Created by Diplomado on 08/06/24.
//

import Foundation

struct CountriesDetailsDTO : Decodable{
    var nombre : String?
    var capital : String?
    var idioma : String?
}

class CountriesDetailsDTOSHandler {
    var countriesDetailsDTOS : [CountriesDetailsDTO]?
    
    let parser = ParserData<[CountriesDetailsDTO]>(resource: "CountriesDetails")
    
    init() throws{
        countriesDetailsDTOS = try parser.getData()
    }
}
