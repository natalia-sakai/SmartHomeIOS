//
//  RoomsViewController.swift
//  SmartHomeIOS
//
//  Created by Natalia Sakai on 17/02/22.
//

import Foundation
import UIKit

class RoomsViewController: UIViewController {
    
    @IBOutlet weak var Room1View: UIView!
    @IBOutlet weak var Room2View: UIView!
    
    @IBOutlet weak var Room2Button: UIButton!
    @IBOutlet weak var Room1Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Room1View.layer.cornerRadius = 22
        Room2View.layer.cornerRadius = 22
    }
    
    @IBAction func TrashButtonPressed(_ sender: UIButton) {
        if(sender.restorationIdentifier! == "room1Button") {
            
        }
        else{
            let alert = UIAlertController(title: "Are you sure that you want to delete this Room?", message: nil, preferredStyle: .alert)
                        alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))

            alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { [self] action in
                            self.Room2View.isHidden = true
                        }))

                        self.present(alert, animated: true)
        }
    }
    
}
