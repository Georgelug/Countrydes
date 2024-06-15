//
//  CountryDTO.swift
//  Countrydex
//
//  Created by Diplomado on 08/06/24.
//

import Foundation

struct CountryDTO : Decodable{
    var id : Int?
    var nombre : String?
}

class CountryDTOSHandler {
    var countryDTOS : [CountryDTO]?
    
    let parser = ParserData<[CountryDTO]>(resource: "Countrys")
    
    init() throws{
        countryDTOS = try parser.getData()
    }
}
