//
//  CovidRow.swift
//  Covid-Nineteen
//
//  Created by Mehmet Koca on 8.04.2020.
//  Copyright © 2020 Mehmet Koca. All rights reserved.
//

import SwiftUI

private enum Constant {
    
    static let confirmedIcon = "🦠 Confirmed"
    static let deathIcon = "⚰️ Deaths"
    static let recoveredIcon = "💉 Recovered"
}

struct CovidRow: View {
    
    let country: Country
    
    var body: some View {
        VStack(spacing: 8.0) {
            HStack {
                Spacer()
                
                Text("\(countryRegion) \(provinceState)")
                .bold()
                
                Spacer()
            }
            
            HStack {
                VStack(alignment: .center, spacing: 4.0) {
                    Text(Constant.confirmedIcon)
                    Text("\(confirmedCount)")
                }
                
                Spacer()
                
                VStack(alignment: .center, spacing: 4.0) {
                    Text(Constant.deathIcon)
                    Text("\(deathCount)")
                }
                
                Spacer()
                
                VStack(alignment: .center, spacing: 4.0) {
                    Text(Constant.recoveredIcon)
                    Text("\(recoveredCount)")
                }
                
            }
        }
        .padding(EdgeInsets(top: 8.0, leading: 4.0, bottom: 8.0, trailing: 4.0))
    }
}

// MARK: - Computed Properties

private extension CovidRow {
    
    var countryInfo: CountryInfo? {
        country.info
    }
    
    var confirmedCount: Int {
        countryInfo?.confirmed ?? 0
    }
    
    var deathCount: Int {
        countryInfo?.deaths ?? 0
    }
    
    var recoveredCount: Int {
        countryInfo?.recovered ?? 0
    }
    
    var countryRegion: String {
        if let countryRegion = countryInfo?.countryRegion {
            return "\(countryRegion)"
        }
        return ""
    }
    
    var provinceState: String {
        if let provinceState = countryInfo?.provinceState {
            return countryRegion.isEmpty ? "\(provinceState)" : "- \(provinceState)"
        }
        return ""
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
