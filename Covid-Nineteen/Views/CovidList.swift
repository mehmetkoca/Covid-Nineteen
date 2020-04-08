//
//  CovidList.swift
//  Covid-Nineteen
//
//  Created by Mehmet Koca on 8.04.2020.
//  Copyright © 2020 Mehmet Koca. All rights reserved.
//

import SwiftUI

struct CovidList: View {
    
    @State private var countries: [Country] = []
    
    var body: some View {
        NavigationView {
            List(countries, id: \.id) { country in
                CovidRow(country: country)
            }
            .onAppear(perform: loadData)
            .navigationBarTitle(Text("Covid Nineteen"))
        }
    }
}

// MARK: - Helper Methods

private extension CovidList {

    func loadData() {
        guard let url = URL(string: Global.Network.baseURL) else { return }
        let request = URLRequest(url: url)
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                if let decodedResponse = try? JSONDecoder().decode(CoronaResponse.self, from: data),
                    let countries = decodedResponse.countries {
                    DispatchQueue.main.async {
                        self.countries = countries
                    }
                    return
                }
            }
            
            print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
        }.resume()
    }
}

#if DEBUG
struct CovidList_Previews: PreviewProvider {
    static var previews: some View {
        CovidList()
    }
}
#endif
