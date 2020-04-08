//
//  CountryInfo.swift
//  Covid-Nineteen
//
//  Created by Mehmet Koca on 8.04.2020.
//  Copyright © 2020 Mehmet Koca. All rights reserved.
//

import Foundation

struct CountryInfo: Codable {
    
    var id: Int?
    var provinceState: String?
    var countryRegion: String?
    var lastUpdateTime: Int64?
    var lat: Float?
    var long: Float?
    var confirmed: Int?
    var deaths: Int?
    var recovered: Int?
    
    private enum CodingKeys: String, CodingKey {
        
        case id = "OBJECTID"
        case provinceState = "Province_State"
        case countryRegion = "Country_Region"
        case lastUpdateTime = "Last_Update"
        case lat = "Lat"
        case long = "Long_"
        case confirmed = "Confirmed"
        case deaths = "Deaths"
        case recovered = "Recovered"
    }
}
