//
//  JuiceMaker - FruitStore.swift
//  Created by 원툴, 두두. 
//  Copyright © yagom academy. All rights reserved.
//

class FruitStore {
    private(set) var fruitStock = [Fruit: Int]()
    
    init() {
        let initialStock = 10
        
        for fruit in Fruit.allCases {
            fruitStock[fruit] = initialStock
        }
    }
    
    func checkStock(fruit: Fruit, amount: Int) throws {
        guard let stock = fruitStock[fruit], stock >= amount else {
            throw JuiceMakerError.outOfStock
        }
    }
    
    func changeStock(fruit: Fruit, amount: Int) {
        guard let stock = fruitStock[fruit] else {
            return
        }
        fruitStock[fruit] = stock - amount
    }
}
