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
    @IBOutlet weak var buttonLabel: UIButton!
    
    private var trafficLightStarted = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.layer.cornerRadius = redLight.layer.bounds.width / 2
        redLight.alpha = 0.5
        yellowLight.layer.cornerRadius = yellowLight.layer.bounds.width / 2
        yellowLight.alpha = 0.5
        greenLight.layer.cornerRadius = greenLight.layer.bounds.width / 2
        greenLight.alpha = 0.5
    }
    
    @IBAction func startBtnPressed() {
        if (!self.trafficLightStarted) {
            buttonLabel.setTitle("Next", for: UIControl.State.normal)
            self.trafficLightStarted = true
            redLight.alpha = 1
        } else {
            if redLight.alpha == 1 {
                redLight.alpha = 0.5
                yellowLight.alpha = 1
            } else if yellowLight.alpha == 1 {
                yellowLight.alpha = 0.5
                greenLight.alpha = 1
            } else if greenLight.alpha == 1 {
                greenLight.alpha = 0.5
                redLight.alpha = 1
            }
        }
    }
}

