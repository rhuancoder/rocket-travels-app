//
//  HomeTableViewHeader.swift
//  RocketTravels
//
//  Created by Rhuan Carvalho on 01/03/24.
//

import UIKit

class HomeTableViewHeader: UIView {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var bannerImageView: UIImageView!
    
    func setupView() {
        headerView.backgroundColor = UIColor(red: 30/255, green: 59/255, blue: 119/255, alpha: 1)
    }
    
}
