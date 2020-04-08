//
//  Country.swift
//  Covid-Nineteen
//
//  Created by Mehmet Koca on 8.04.2020.
//  Copyright © 2020 Mehmet Koca. All rights reserved.
//

import Foundation

struct Country: Codable {
    
    var info: CountryInfo?
    
    private enum CodingKeys: String, CodingKey {
        
        case info = "attributes"
    }
}
