//
//  Game.swift
//  FactoryPatternSwift
//
//  Created by Reagan Wood on 6/14/18.
//  Copyright © 2018 RW Software. All rights reserved.
//

import Foundation

enum GameSystem {
    case PS4
    case Xbox
    case Nintendo
}

protocol Game {
    func getName () -> String
    func getCost () -> Double
}

class VideoGame: Game {
    private var name: String
    private var genre: String
    private var cost: Double
    private var system: GameSystem
    
    init(name: String, genre: String, cost: Double, system: GameSystem) {
        self.name = name
        self.genre = genre
        self.cost = cost
        self.system = system
    }
    
    func getName() -> String {
        return "Name: \(name) in the genre \(genre) on the \(system)"
    }
    
    func getCost() -> Double {
        return cost
    }
}

class BoardGame: Game {
    
    private var name: String
    private var pieces: Int
    private var price: Double
    
    init (name: String, pieces: Int, price: Double) {
        self.name = name
        self.pieces = pieces
        self.price = price
    }
    
    func getName() -> String {
        return "\(name), and it has \(pieces) pieces!"
    }
    
    func getCost() -> Double {
        return price
    }
}


