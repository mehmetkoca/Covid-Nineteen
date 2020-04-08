//
//  CovidList.swift
//  Covid-Nineteen
//
//  Created by Mehmet Koca on 8.04.2020.
//  Copyright © 2020 Mehmet Koca. All rights reserved.
//

import SwiftUI

let countries: [Country] = [Country(info: CountryInfo(id: 200,
                                                      provinceState: nil,
                                                      countryRegion: "Netherlands",
                                                      lastUpdateTime: 1586343388000,
                                                      lat: 52.1326,
                                                      long: 5.2913,
                                                      confirmed: 19580,
                                                      deaths: 2101,
                                                      recovered: 250)),
                            Country(info: CountryInfo(id: 200,
                                                      provinceState: nil,
                                                      countryRegion: "Netherlands",
                                                      lastUpdateTime: 1586343388000,
                                                      lat: 52.1326,
                                                      long: 5.2913,
                                                      confirmed: 19580,
                                                      deaths: 2101,
                                                      recovered: 250))]

struct CovidList: View {
    
    var body: some View {
        List(countries, id: \.id) { country in
            CovidRow(country: country)
        }
    }
}

#if DEBUG
struct CovidList_Previews: PreviewProvider {
    static var previews: some View {
        CovidList()
    }
}
#endif
