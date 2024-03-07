//
//  TravelTableViewCell.swift
//  RocketTravels
//
//  Created by Rhuan Carvalho on 04/03/24.
//

import UIKit

class TravelTableViewCell: UITableViewCell {

    // MARK: - IBOutlets
    
    @IBOutlet weak var backgroundViewCell: UIView!
    @IBOutlet weak var travelImage: UIImageView!
    @IBOutlet weak var travelTitleLabel: UILabel!
    @IBOutlet weak var travelSubtitleLabel: UILabel!
    @IBOutlet weak var travelNightsLabel: UILabel!
    @IBOutlet weak var priceWithoutDiscountLabel: UILabel!
    @IBOutlet weak var travelPriceLabel: UILabel!
    @IBOutlet weak var cancellationStatusLabel: UILabel!
    
    func setCell(_ travel: Travel?) {
        travelImage.image = UIImage(named: travel?.asset ?? "")
        travelTitleLabel.text = travel?.title
        travelSubtitleLabel.text = travel?.subtitle
        travelPriceLabel.text = "R$ \(travel?.price ?? 0)"
        
        let attrString: NSMutableAttributedString = NSMutableAttributedString(string: "R$ \(travel?.priceWithoutDiscount ?? 0)")
        attrString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 1, range: NSMakeRange(0, attrString.length))
        priceWithoutDiscountLabel.attributedText = attrString
        
        if let nightsNumber = travel?.nights, let guestsNumber = travel?.guests {
            let nights = nightsNumber == 1 ? "Night" : "Nights"
            let guests = guestsNumber == 1 ? "Person" : "People"
            
            travelNightsLabel.text = "\(nightsNumber) \(nights) - \(guestsNumber) \(guests)"
        }
        
        DispatchQueue.main.async {
            self.backgroundViewCell.addShadow()
        }
    }
}



