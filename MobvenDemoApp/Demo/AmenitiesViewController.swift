//
//  AmenitiesViewController.swift
//  MobvenDemoApp
//
//  Created by mobven-macbook on 2.07.2022.
//

import UIKit

class AmenitiesViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "amenitiesCell")
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension AmenitiesViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Amenities.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "amenitiesCell")!
        
        var configuration = UITableViewCell().defaultContentConfiguration()
        let amenity = Amenities.allCases[indexPath.row]
        
        configuration.text = amenity.title
        configuration.image = amenity.icon
        
        cell.contentConfiguration = configuration
        
        return cell
    }
}

extension AmenitiesViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}
