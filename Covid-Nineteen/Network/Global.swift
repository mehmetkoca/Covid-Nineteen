//
//  Global.swift
//  Covid-Nineteen
//
//  Created by Mehmet Koca on 8.04.2020.
//  Copyright © 2020 Mehmet Koca. All rights reserved.
//

enum Global {
    
    enum Network {
        
        static let baseURL = "https://services1.arcgis.com/0MSEUqKaxRlEPj5g/arcgis/rest/services/ncov_cases/FeatureServer/1/query?f=json&where=Confirmed%20%3E%200&spatialRel=esriSpatialRelOverlaps&outFields=*&orderByFields=Last_Update&resultOffset=2&resultRecordCount=1000&cacheHint=true&returnZ=true&returnM=true&returnTrueCurves=true&returnCountOnly=false&geometryPrecision=4&returnEditMoment=true&supportsAttachmentsByUploadId=true"
    }
}
