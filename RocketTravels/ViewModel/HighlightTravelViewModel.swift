//
//  HighlightTravelViewModel.swift
//  RocketTravels
//
//  Created by Rhuan Carvalho on 06/03/24.
//

import Foundation

class HighlightTravelViewModel: TravelViewModel {
    
    var sessionTitle: String {
        return "Highlights"
    }
    
    var type: TravelViewModelType {
        return .highlights
    }
    
    var travels: [Travel]
    
    var numberLines: Int {
        return travels.count
    }
    
    init(travels: [Travel]) {
        self.travels = travels
    }
}
