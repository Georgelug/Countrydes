//
//  CapitalsDTO.swift
//  Countrydex
//
//  Created by Diplomado on 08/06/24.
//

import Foundation

struct CapitalsDTO : Decodable{
    var country : [String: [[String: String]]]?
}

class CapitalsDTOSHandler {
    var capitalsDTOS : [CapitalsDTO]?
    
    let parser = ParserData<[CapitalsDTO]>(resource: "Capitals")
    
    init() throws{
        capitalsDTOS = try parser.getData()
    }
}
