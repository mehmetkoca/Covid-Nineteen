//
//  CovidDetail.swift
//  Covid-Nineteen
//
//  Created by Mehmet Koca on 10.04.2020.
//  Copyright © 2020 Mehmet Koca. All rights reserved.
//

import SwiftUI

struct CovidDetail: View {
    
    var country: Country
    
    var body: some View {
        VStack {
            MapView(coordinate: country.coordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 200)
            
            Spacer()
        }
        .navigationBarTitle(Text("\(country.info?.countryRegion ?? "")"))
    }
}

#if DEBUG
struct CovidDetail_Previews: PreviewProvider {
    static var previews: some View {
        CovidDetail(country: Country(info: CountryInfo(id: 200,
                                                       provinceState: nil,
                                                       countryRegion: "Netherlands",
                                                       lastUpdateTime: 1586343388000,
                                                       lat: 52.1326,
                                                       long: 5.2913,
                                                       confirmed: 19580,
                                                       deaths: 2101,
                                                       recovered: 250)))
    }
}
#endif
