//
//  TravelTypes.swift
//  RocketTravels
//
//  Created by Rhuan Carvalho on 06/03/24.
//

import Foundation

struct TravelTypes: Codable {
    
    var highlights: [Travel]?
    var offers: [Travel]?
    var international: [Travel]?
    
    static func jsonToData(_ json:[String: Any]) -> Data? {
        return try? JSONSerialization.data(withJSONObject: json, options: [])
    }

    static func decodeJson(_ jsonData: Data) -> TravelTypes? {
        do {
            return try JSONDecoder().decode(TravelTypes.self, from: jsonData)
        } catch {
            print(error.localizedDescription)
            return nil
        }
    }
}
