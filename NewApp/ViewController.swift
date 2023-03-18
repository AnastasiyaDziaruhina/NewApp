//
//  ViewController.swift
//  NewApp
//
//  Created by Stacy on 13/03/2023.
//

import UIKit

final class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var buttonLabel: UIButton!
    
    // MARK: - Properties
    
    private var trafficLightStarted = false
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lightsConfig()
    }
    
    // MARK: - Private methods
    
    private func lightsConfig () {
        redLight.layer.cornerRadius = redLight.layer.bounds.width / 2
        redLight.alpha = 0.5
        yellowLight.layer.cornerRadius = yellowLight.layer.bounds.width / 2
        yellowLight.alpha = 0.5
        greenLight.layer.cornerRadius = greenLight.layer.bounds.width / 2
        greenLight.alpha = 0.5
    }
    
    private func switchLight() {
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
    
    // MARK: - IBActions
    
    @IBAction func startBtnPressed() {
        if !trafficLightStarted {
            buttonLabel.setTitle("Next", for: .normal)
            trafficLightStarted = true
            redLight.alpha = 1
        } else {
            switchLight()
        }
    }
}

