//
//  GameStore.swift
//  FactoryPatternSwift
//
//  Created by Reagan Wood on 6/14/18.
//  Copyright © 2018 RW Software. All rights reserved.
//

import Foundation

protocol GameStore {
    func sellGame (identifier: String) -> Game?
    func isGameAvailable (identifier: String) -> Bool
}

class VidoeGameStore: GameStore {
    
    private var stock: [Game] = []
    
    init () {
        stock = self.initializeStock()
    }
    
    func sellGame(identifier: String) -> Game? {
        return stock.filter({ (game) -> Bool in
            game.getName() == identifier
        }).first
    }
    
    func isGameAvailable(identifier: String) -> Bool {
        let gameIfExists = stock.filter { (game) -> Bool in
            game.getName() == identifier
        }.first
        if gameIfExists != nil {
            return true
        } else {
            return false
        }
    }
    
    private func initializeStock () -> [Game] {
        let theLastOfUs = VideoGame(name: "The Last of Us", genre: "Action / Adventure", cost: 59.99, system: GameSystem.PS4)
        let superMario64 = VideoGame(name: "Mario64", genre: "Action / Adventure", cost: 39.99, system: GameSystem.Nintendo)
        let metalGearSolid = VideoGame(name: "Metal Gear Solid", genre: "Shooter", cost: 59.99, system: GameSystem.Xbox)
        return [theLastOfUs, superMario64, metalGearSolid]
    }
}

class BoardGameStore: GameStore {
    
    var boardGames: [String: Game] = [:]
    
    init() {
        initializeStock()
    }
    
    func sellGame(identifier: String) -> Game? {
        return boardGames[identifier]
    }
    
    func isGameAvailable(identifier: String) -> Bool {
        return  boardGames[identifier] != nil
    }
    
    private func initializeStock () {
        let katan = BoardGame(name: "Settlers of Katan", pieces: 25, price: 25.00)
        let monopoly = BoardGame (name: "Monopoly", pieces: 101, price: 29.99)
        boardGames[monopoly.getName()] = monopoly
        boardGames[katan.getName()] = katan
    }
}

class GameSuperStore: GameStore {
    
    private var stock: [Game] = []
    
    init () {
        stock = initializeStock()
    }
    
    func sellGame(identifier: String) -> Game? {
        return stock.filter({ (game) -> Bool in
            game.getName() == identifier
        }).first
    }
    
    func isGameAvailable(identifier: String) -> Bool {
        return stock.filter { (game) -> Bool in
            game.getName() == identifier
            }.first != nil
    }
    
    private func initializeStock () -> [Game] {
        let katan = BoardGame(name: "Settlers of Katan", pieces: 25, price: 25.00)
        let monopoly = BoardGame (name: "Monopoly", pieces: 101, price: 29.99)
        let theLastOfUs = VideoGame(name: "The Last of Us", genre: "Action / Adventure", cost: 59.99, system: GameSystem.PS4)
        let superMario64 = VideoGame(name: "Mario64", genre: "Action / Adventure", cost: 39.99, system: GameSystem.Nintendo)
        let metalGearSolid = VideoGame(name: "Metal Gear Solid", genre: "Shooter", cost: 59.99, system: GameSystem.Xbox)
        return [theLastOfUs, superMario64, metalGearSolid, katan, monopoly]
    }
}
