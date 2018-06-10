//
//  Light.swift
//  InterviewStarter
//
//  Created by Ashley Coleman on 4/18/18.
//  Copyright © 2018 Ashley Coleman. All rights reserved.
//

import UIKit

protocol LightDelegate: class {
    func didChangePowerStatus(isOn: Bool)
    func didChangeColor(color: UIColor)
    func didChangeBrightness(brightness: Int)
}

class Light {
    // Question: Why is this a weak var? Why is the protocol class bound?
    weak var delegate: LightDelegate?
    
    var name = ""
    var isOn = false
    var brightness = 0 {
        didSet {
            delegate?.didChangeBrightness(brightness: brightness)
        }
    }
    
    var color = UIColor.white {
        didSet {
            delegate?.didChangeColor(color: color)
        }
    }
    
    init() {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {[weak self] (_) in
            self?.changeBrightness()
        }
    }
    
    func turnOn() {
        isOn = true
        delegate?.didChangePowerStatus(isOn: isOn)
    }
    
    func turnOff() {
        isOn = false
        delegate?.didChangePowerStatus(isOn: isOn)
    }
    
    @objc private func changeBrightness() {
        brightness = Int(arc4random_uniform(101))
    }
    
    static func makeLight() -> Light {
        let l = Light()
        l.name = ["Living Room", "Front Door", "Bedroom", "Bathroom"][Int(arc4random_uniform(4))]
        l.changeBrightness()
        l.color = [.red, .blue, .green, .yellow, .purple][Int(arc4random_uniform(5))]
        return l
    }
}

