//
//  ViewController.swift
//  NewApp
//
//  Created by Stacy on 13/03/2023.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.layer.bounds.width / 2
        redLight.alpha = 0.5
        yellowLight.layer.cornerRadius = yellowLight.layer.bounds.width / 2
        yellowLight.alpha = 0.5
        greenLight.layer.cornerRadius = greenLight.layer.bounds.width / 2
        greenLight.alpha = 0.5
    }

    @IBAction func startBtnPressed() {
        
    }
    
}

