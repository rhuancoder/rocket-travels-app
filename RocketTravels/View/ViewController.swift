//
//  ViewController.swift
//  RocketTravels
//
//  Created by Rhuan Carvalho on 27/02/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var travelsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTableView()
        
        view.backgroundColor = UIColor(red: 30/255, green: 59/255, blue: 119/255, alpha: 1)
    }
    
    func setTableView() {
        travelsTableView.register(UINib(nibName: "TravelTableViewCell", bundle: nil), forCellReuseIdentifier: "TravelTableViewCell")
        travelsTableView.dataSource = self
        travelsTableView.delegate = self
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let travelCell = tableView.dequeueReusableCell(withIdentifier: "TravelTableViewCell") as? TravelTableViewCell else {
            fatalError("error to create TravelTableViewCell")
        }
        
        return travelCell
    }
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = Bundle.main.loadNibNamed("HomeTableViewHeader", owner: self, options: nil)?.first as? HomeTableViewHeader
        headerView?.setupView()
        
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 280
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
    }
}
