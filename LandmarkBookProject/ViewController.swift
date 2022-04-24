//
//  ViewController.swift
//  LandmarkBookProject
//
//  Created by Erge Gevher Akova on 22.04.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var landmarkNames = [String]()
    var landmarkImage = [UIImage]()
    var chosenLandmarkName = ""
    var chosenLandmarkImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self

        landmarkNames.append("Colosseum")
        landmarkNames.append("Aifel")
        landmarkNames.append("Galata")
        landmarkNames.append("Greate Wall")
        landmarkNames.append("Kremlin")
        landmarkNames.append("Stonehenge")
        landmarkNames.append("Taj Mahal")

        landmarkImage.append(UIImage(named: "colosseum.jpg")!)
        landmarkImage.append(UIImage(named: "aifel.jpg")!)
        landmarkImage.append(UIImage(named: "galata.jpg")!)
        landmarkImage.append(UIImage(named: "greateWall.jpg")!)
        landmarkImage.append(UIImage(named: "kremlin.jpg")!)
        landmarkImage.append(UIImage(named: "stonehenge.jpg")!)
        landmarkImage.append(UIImage(named: "tajMahal.jpg")!)
        
        navigationItem.title = "Landmark Book"
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            landmarkNames.remove(at: indexPath.row)
            landmarkImage.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = landmarkNames[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenLandmarkName = landmarkNames[indexPath.row]
        chosenLandmarkImage = landmarkImage[indexPath.row]
        performSegue(withIdentifier: "toImageViewController", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toImageViewController"{
            let destinatonVC = segue.destination as! ImageViewController
            destinatonVC.selectedLandmarkName = chosenLandmarkName
            destinatonVC.selectedLandmarkImage = chosenLandmarkImage
        }
    }
}
