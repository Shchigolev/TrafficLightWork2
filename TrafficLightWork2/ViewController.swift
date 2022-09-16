//
//  ViewController.swift
//  TrafficLightWork2
//
//  Created by Kirill Shchigolev on 16.09.2022.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!

    @IBOutlet var startButton: UIButton!
    
    private var currentLight = CurrentLight.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
        
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
    }
    
    override func viewWillLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = redLight.frame.width / 2
        greenLight.layer.cornerRadius = redLight.frame.width / 2
    }
    
    @IBAction func startButtonChange() {
        
        startButton.setTitle("NEXT", for: .normal)
        
        switch currentLight {
        case .red:
            greenLight.alpha = 0.3
            redLight.alpha = 1
            currentLight = .yellow
        case .yellow:
            redLight.alpha = 0.3
            yellowLight.alpha = 1
            currentLight = .green
        case .green:
            greenLight.alpha = 1
            yellowLight.alpha = 0.3
            currentLight = .red
        }
    }
}


