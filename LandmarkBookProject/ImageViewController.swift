//
//  ImageViewController.swift
//  LandmarkBookProject
//
//  Created by Erge Gevher Akova on 24.04.2022.
//

import UIKit

class ImageViewController: UIViewController {
    
    @IBOutlet weak var landmarkImage: UIImageView!
    @IBOutlet weak var landmarkName: UILabel!
    
    var selectedLandmarkName = ""
    var selectedLandmarkImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        landmarkName.text = selectedLandmarkName
        landmarkImage.image = selectedLandmarkImage
    }
}
