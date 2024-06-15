//
//  CurrencyDTO.swift
//  Countrydex
//
//  Created by Diplomado on 08/06/24.
//

import Foundation

struct CurrencyDTO : Decodable{
    var nombre : String?
    var Moneda : String?
}

class CurrencyDTOSHandler {
    var currencyDTOS : [CurrencyDTO]?
    
    let parser = ParserData<[CurrencyDTO]>(resource: "Currency")
    
    init() throws{
        currencyDTOS = try parser.getData()
    }
}
