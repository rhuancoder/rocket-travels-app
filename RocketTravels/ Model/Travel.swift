//
//  Travel.swift
//  RocketTravels
//
//  Created by Rhuan Carvalho on 06/03/24.
//

import Foundation

struct Travel: Codable {
    var id: Int
    var title: String
    var asset: String
    var subtitle: String
    var nights: Int
    var guests: Int
    var priceWithoutDiscount: Double
    var price: Double
    var cancellation: String
    
    static func jsonToData(_ json:[String: Any]) -> Data? {
        return try? JSONSerialization.data(withJSONObject: json, options: [])
    }

    static func decodeJson(_ jsonData: Data) -> Travel? {
        do {
            return try JSONDecoder().decode(Travel.self, from: jsonData)
        } catch {
            print(error.localizedDescription)
            return nil
        }
    }
}
