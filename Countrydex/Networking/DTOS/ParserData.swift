//
//  ParserData.swift
//  Countrydex
//
//  Created by Diplomado on 08/06/24.
//

import Foundation

class ParserData<DTO : Decodable>{
    var resource : String
    
    var dtos: DTO?
    
    init(resource: String) {
        self.resource = resource
    }
    
    func getData() throws -> DTO{
        
        guard let url = Bundle.main.url(forResource: resource, withExtension: "json"), let data = try? Data(contentsOf: url) else { throw ParserError.fileError }
        
        let dtos = try DTO(data: data)
        
        return dtos
    }
}
