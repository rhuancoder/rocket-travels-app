//
//  DecodableData.swift
//  RocketTravels
//
//  Created by Rhuan Carvalho on 06/03/24.
//

import Foundation

let travelsSession: [TravelViewModel]? = load("server-response.json")

func load(_ filename: String) -> [TravelViewModel]? {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        
        guard let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] else {
            fatalError("error to read json dictionary")
        }
        
        guard let travelsList = json["travels"] as? [String: Any] else {
            fatalError("error to read travel list")
        }
        
        guard let jsonData = TravelTypes.jsonToData(travelsList) else { return nil }
        
        let travelTypes = TravelTypes.decodeJson(jsonData)
        
        var travelListViewModel: [TravelViewModel] = []
        
        for session in travelsList.keys {
            switch TravelViewModelType(rawValue: session)  {
            case .highlights:
                if let highlights = travelTypes?.highlights {
                    let highlightViewModel = HighlightTravelViewModel(travels: highlights)
                    travelListViewModel.insert(highlightViewModel, at: 0)
                }
            default:
                break
            }
        }
        
        return travelListViewModel
    } catch {
        fatalError("Couldn't parse")
    }
}
