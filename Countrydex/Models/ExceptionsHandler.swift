//
//  ExceptionsHandler.swift
//  Countrydex
//
//  Created by Diplomado on 08/06/24.
//

import Foundation


enum CountryModelError: Error, LocalizedError {
    case CountriesError
    case fileError
    case parsingError
    
    
    var errorDescription: String? {
        switch self {
        case .fileError:
            "File not found"
        case .CountriesError:
            "Country not found"
        case .parsingError:
            "Could not parse response"
        }
    }
}


enum CurrencyModelError: Error, LocalizedError {
    case CurrencyError
    case fileError
    case parsingError
    
    
    var errorDescription: String? {
        switch self {
        case .fileError:
            "File not found"
        case .CurrencyError:
            "Currency not found"
        case .parsingError:
            "Could not parse response"
        }
    }
}

enum ParserError: Error, LocalizedError {
    case fileError
    case parsingError
    
    
    var errorDescription: String? {
        switch self {
        case .fileError:
            "File not found"
        case .parsingError:
            "Could not parse response"
        }
    }
}
