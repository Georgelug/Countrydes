//
//  CountryModel.swift
//  Countrydex
//
//  Created by Diplomado on 08/06/24.
//

import Foundation


class CountryModel {
    var countries: [Country]?
    var countryDTO : CountryDTOSHandler
    var flagsDTO : FlagsDTOSHandler
    
    init() throws{
        countryDTO = try CountryDTOSHandler()
        flagsDTO = try FlagsDTOSHandler()
        try getCountries(countryDTO: countryDTO, flagDTO: flagsDTO)
    }
    
    private func getCountries(countryDTO: CountryDTOSHandler, flagDTO : FlagsDTOSHandler) throws{
        try countryDTO.countryDTOS?.forEach {
            try countries?.append(getCountryDTOS(countryDTO: $0, flagDTO: flagDTO))
        }
    }
    
    private func getCountryDTOS(countryDTO : CountryDTO , flagDTO : FlagsDTOSHandler) throws -> Country {
        guard let name = countryDTO.nombre else { throw CountryModelError.CountriesError }
        
        return Country(name: name, flagImage: flagDTO.flagDTO?.country?[name] ?? "")
    }
    
    func getcountry(for index: IndexPath) -> Country? {
        countries?[index.row]
    }
    
    func getNumberOfCountries() -> Int {
        countries?.count ?? 0
    }
}

