//
//  ViewController.swift
//  HomebaseInterview
//
//  Created by Reagan Wood on 4/19/18.
//  Copyright © 2018 RW Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController, LightDelegate {
    
    @IBOutlet weak var uxLightView: UIView!
    @IBOutlet weak var uxDeviceNameLabel: UILabel!
    @IBOutlet weak var uxRedLightButton: UIButton!
    @IBOutlet weak var uxGreenLightButton: UIButton!
    @IBOutlet weak var uxBrightnessLabel: UILabel!
    
    let light = Light.makeLight()
    override func viewDidLoad() {
        super.viewDidLoad()
        setLightDelegate()
        setDeviceName()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func setLightDelegate () {
        light.delegate = self
    }
    
    func setDeviceName () {
        DispatchQueue.main.async {
            self.uxDeviceNameLabel.text = self.light.name
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onButtonPressed(_ sender: Any) {
        light.turnOn()
    }
    
    @IBAction func offButtonPressed(_ sender: Any) {
        light.turnOff()
    }
    
    @IBAction func redButtonPressed(_ sender: Any) {
        if light.isOn {
            light.color = UIColor.red
        }
    }
}

extension ViewController {
    func didChangePowerStatus(isOn: Bool) {
        
    }
    
    func didChangeColor(color: UIColor) {
        uxLightView.backgroundColor = color
    }
    
    func didChangeBrightness(brightness: Int) {
        DispatchQueue.main.async {
            self.uxBrightnessLabel.text = String(brightness) + "%"
        }
    }
}

