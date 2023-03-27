//
//  Monsters.swift
//  Text Adventure
//
//  Created by admin on 1/8/19.
//  Copyright © 2019 admin. All rights reserved.
//

import Foundation

//setup monster struct
struct Monster {
    var name = String()
    var hitPoints = Int()
    var hitRate = Double()
    var damage = Int()
    
    
    
    func attacks() -> Bool { //returns true if hits
        
        let hitRoll : Int = getRando(99) + 1
        
        if Double(hitRoll) < self.hitRate * 100 {
            print("Rolled \(hitRoll), needed less than \(self.hitRate * 100)")
            return true
        } else {
            print("Rolled \(hitRoll), needed less than \(self.hitRate * 100)")
            return false
        }
    }
    
    mutating func WasHit(damage: Int) -> Bool { //return true if dead
        
        return false
        
    }
    
}
