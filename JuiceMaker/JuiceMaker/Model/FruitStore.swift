//
//  JuiceMaker - FruitStore.swift
//  Created by Vayne, 우롱차. 
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

class FruitStore {
    private var fruitStock: Dictionary<Fruit, Int>
    
    static let fruitStore = FruitStore(fruitStock: Fruit.defaultFruitStock)
    
    init(fruitStock: Dictionary<Fruit, Int>) {
        self.fruitStock = fruitStock
    }
    
    func getStock(fruit: Fruit) -> Int {
        guard let stock = self.fruitStock[fruit] else {
            return 0
        }
        return stock
    }
    
    func checkStock(fruit: Fruit, amount: Int) throws {
        guard let stock = self.fruitStock[fruit] else {
            throw JuiceMakingError.notRegisteredFruit
        }
        if stock < amount {
            throw JuiceMakingError.notEnoughStock
        }
    }
    
    func consumeStock(fruit: Fruit, amount: Int) throws {
        guard let stock = self.fruitStock[fruit] else {
            throw JuiceMakingError.notRegisteredFruit
        }
        if stock < amount {
            throw JuiceMakingError.notEnoughStock
        }
        self.fruitStock[fruit] = stock - amount
    }
    
    func addStock(fruit: Fruit, amount: Int) throws {
        guard let stock = self.fruitStock[fruit] else {
            throw JuiceMakingError.notRegisteredFruit
        }
        self.fruitStock[fruit] = stock + amount
    }
    
    func addNewFruit(_ fruit: Fruit) throws {
        if let _ = self.fruitStock[fruit] {
            throw JuiceMakingError.duplicatedFruit
        } else {
            self.fruitStock[fruit] = 10
        }
    }
    
    func removeFruit(_ fruit: Fruit) throws {
        if let _ = self.fruitStock[fruit] {
            self.fruitStock.removeValue(forKey: fruit)
        } else {
            throw JuiceMakingError.notRegisteredFruit
        }
    }
}

