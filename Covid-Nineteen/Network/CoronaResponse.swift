//
//  CoronaResponse.swift
//  Covid-Nineteen
//
//  Created by Mehmet Koca on 8.04.2020.
//  Copyright © 2020 Mehmet Koca. All rights reserved.
//

import Foundation

struct CoronaResponse: Codable {
    
    var countries: [Country]?
    
    private enum CodingKeys: String, CodingKey {
        
        case countries = "features"
    }
}
