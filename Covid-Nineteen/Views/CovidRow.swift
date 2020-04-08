//
//  CovidRow.swift
//  Covid-Nineteen
//
//  Created by Mehmet Koca on 8.04.2020.
//  Copyright © 2020 Mehmet Koca. All rights reserved.
//

import SwiftUI

private enum Constant {
    
    static let confirmedIcon = "🦠"
    static let deathIcon = "⚰️"
    static let recoverIcon = "💉"
}

struct CovidRow: View {
    
    let country: Country
    
    var body: some View {
        VStack(spacing: 8.0) {
            HStack {
                Spacer()
                
                Text("\(country.info?.countryRegion ?? "Not found")")
                .bold()
                
                Spacer()
            }
            
            HStack {
                VStack(alignment: .center, spacing: 4.0) {
                    Text(Constant.confirmedIcon)
                    Text("19580")
                }
                
                Spacer()
                
                VStack(alignment: .center, spacing: 4.0) {
                    Text(Constant.deathIcon)
                    Text("2101")
                }
                
                Spacer()
                
                VStack(alignment: .center, spacing: 4.0) {
                    Text(Constant.recoverIcon)
                    Text("250")
                }
                
            }
        }
        .padding(EdgeInsets(top: 8.0, leading: 16.0, bottom: 8.0, trailing: 16.0))
    }
}

// MARK: - Computed Properties

private extension CovidRow {
    
    var countryInfo: CountryInfo? {
        country.info
    }
}

#if DEBUG
struct CovidRow_Previews: PreviewProvider {
    static var previews: some View {
        CovidRow(country: Country(info: CountryInfo(id: 200,
                                                    provinceState: nil,
                                                    countryRegion: "Netherlands",
                                                    lastUpdateTime: 1586343388000,
                                                    lat: 52.1326,
                                                    long: 5.2913,
                                                    confirmed: 19580,
                                                    deaths: 2101,
                                                    recovered: 250)))
            .previewLayout(.sizeThatFits)
    }
}
#endif
