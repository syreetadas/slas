//
//  Heroes.swift
//  Text Adventure
//
//  Created by admin on 1/8/19.
//  Copyright © 2019 admin. All rights reserved.
//

import Foundation

// setup adventurer class, you may add additional properties or methods to the super, you may rename anything in here
class Adventurer {
    
    var name : String
    var hitPoints : Int
    var damage : Int
    var hitRate : Double
    
    init() {
        self.name = ""
        self.hitPoints = 100
        self.damage = 0
        self.hitRate = 0
    }
    
    func status() { //returns status
        print("Hero Name: \(self.name)")
        print("Hit Points Remaining: \(self.hitPoints)")
        print("Damage: \(self.damage)")
        print("Hit Chance: \(self.hitRate)")
    }
    
    func attack() -> Bool { //returns true if hits
        
        var hitRoll : Int = getRando(99) + 1
        
        return false
    
    }
    
    func WasHit(damage: Int) -> Bool { //return true if dead
        
        return false
        
    }
    
}// end adventurer


// define adventurer subclasses, create at least 1 override method for each subclass
class Warrior : Adventurer {
    
    override init() {
        super.init()
        self.damage = 10
        self.hitRate = 0.30
    }

}

class Mage : Adventurer {
 
    override init() {
        super.init()
        self.damage = 20
        self.hitRate = 0.15
    }
}

class Rogue : Adventurer {
    
    override init() {
        super.init()
        self.damage = 5
        self.hitRate = 0.60
    }
    
}

