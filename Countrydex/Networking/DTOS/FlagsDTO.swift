//
//  FlagsDTO.swift
//  Countrydex
//
//  Created by Diplomado on 08/06/24.
//

import Foundation

struct FlagDTO : Decodable{
    var country : [String: String]?
}

class FlagsDTOSHandler {
    var flagDTO : FlagDTO?
    
    let parser = ParserData<FlagDTO>(resource: "Flag")
    
    init() throws{
        flagDTO = try parser.getData()
    }
}
