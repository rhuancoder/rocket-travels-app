//
//  TravelViewModel.swift
//  RocketTravels
//
//  Created by Rhuan Carvalho on 06/03/24.
//

import Foundation

enum TravelViewModelType: String {
    case highlights
    case offers
    case international
}

protocol TravelViewModel {
    var sessionTitle: String { get }
    var type: TravelViewModelType { get }
    var travels: [Travel] { get set }
    var numberLines: Int { get }
}
