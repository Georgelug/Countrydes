//
//  CurrencyConversionDTO.swift
//  Countrydex
//
//  Created by Diplomado on 08/06/24.
//

import Foundation

struct CurrencyConversionDTO : Decodable{
    var currency : [String: [String : Float]]
}

class CurrencyConversionDTOSHandler {
    var currencyCoversionsDTOS : [CurrencyConversionDTO]?
    
    let parser = ParserData<[CurrencyConversionDTO]>(resource: "CurrencyConversion")
    
    init() throws{
        currencyCoversionsDTOS = try parser.getData()
    }
}
