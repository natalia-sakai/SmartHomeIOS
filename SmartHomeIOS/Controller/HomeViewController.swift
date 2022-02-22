//
//  HomeViewController.swift
//  SmartHomeIOS
//
//  Created by Natalia Sakai on 15/02/22.
//

import Foundation
import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var Device2View: UIView!
    @IBOutlet weak var Device1View: UIView!
    @IBOutlet weak var ClimaView: UIView!
    @IBOutlet weak var CompView: UIView!
    @IBOutlet weak var LampView: UIView!
    @IBOutlet weak var AbajurView: UIView!
    @IBOutlet weak var ButtonsView: UIView!
    @IBOutlet weak var ResumeView: UIView!
    
    @IBOutlet weak var device1Text: UILabel!
    @IBOutlet weak var device2Text: UILabel!
    
    var b = Array(repeating: true, count: 5)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ButtonsView.layer.cornerRadius = 22
        AbajurView.layer.cornerRadius = 22
        LampView.layer.cornerRadius = 22
        CompView.layer.cornerRadius = 22
        Device2View.layer.cornerRadius = 22
        Device1View.layer.cornerRadius = 22
        ResumeView.layer.cornerRadius = 22
        ClimaView.layer.cornerRadius = 30
    }
    
    @IBAction func ButtonPressed(_ sender: UIButton) {
        if(sender.restorationIdentifier! != "") {
            changeIconColor(button: sender)
        }
    }
    
    func changeIconColor(button: UIButton) {
        if(b[Int(button.restorationIdentifier!)!]) {
            button.tintColor = .gray
        }
        else {
            button.tintColor = .tintColor
        }
        
        if(button.restorationIdentifier! == "3") {
            if(b[Int(button.restorationIdentifier!)!]) {
                device1Text.text = ""
            }
            else {
                device1Text.text = "Playing"
            }
        }
        
        if(button.restorationIdentifier! == "4") {
            if(b[Int(button.restorationIdentifier!)!]) {
                device2Text.text = ""
            }
            else {
                device2Text.text = "Brightness 80%"
            }
        }
        
        b[Int(button.restorationIdentifier!)!] = !b[Int(button.restorationIdentifier!)!];
    }
}

