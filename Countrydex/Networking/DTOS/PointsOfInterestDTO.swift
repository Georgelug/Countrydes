//
//  PointsOfInterestDTO.swift
//  Countrydex
//
//  Created by Diplomado on 08/06/24.
//

import Foundation

struct StatesDTO : Decodable{
    var estado : String?
    var lugares : [String]?
}


struct PointsOfInterestsDTO : Decodable{
    var paises : [[String : StatesDTO]]?
}

class PointsOfInterestsDTOSHandler {
    var pointsOfInterestsDTO : PointsOfInterestsDTO?
    
    let parser = ParserData<PointsOfInterestsDTO>(resource: "PointsOfInterest")
    
    init() throws{
        pointsOfInterestsDTO = try parser.getData()
    }
}
