//
//  ViewController.swift
//  LandmarkBookProject
//
//  Created by Erge Gevher Akova on 22.04.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        var landmarkNames = [String]()
        landmarkNames.append("Colosseum")
        landmarkNames.append("Aifel")
        landmarkNames.append("Galata")
        landmarkNames.append("Greate Wall")
        landmarkNames.append("Kremlin")
        landmarkNames.append("Stonehenge")
        landmarkNames.append("Taj Mahal")
        
        var landmarkImage = [UIImage]()
        landmarkImage.append(UIImage(named: "colosseum.jpg")!)
        landmarkImage.append(UIImage(named: "aifel.jpg")!)
        landmarkImage.append(UIImage(named: "galata.jpg")!)
        landmarkImage.append(UIImage(named: "greateWall.jpg")!)
        landmarkImage.append(UIImage(named: "kremlin.jpg")!)
        landmarkImage.append(UIImage(named: "stonehenge.jpg")!)
        landmarkImage.append(UIImage(named: "tajMahal.jpg")!)
        
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "test"
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

}

