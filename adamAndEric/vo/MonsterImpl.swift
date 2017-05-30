//
//  MonsterImpl.swift
//  Monsters
//
//  Created by Eric Cancil on 5/29/17.
//  Copyright © 2017 Eric Cancil. All rights reserved.
//

import Foundation

final class MonsterImpl : Monster {
    
    let name: String
    let gameManager: GameManager
    
    init(name: String, gameManager: GameManager) {
        self.name = name
        self.gameManager = gameManager
    }
    
    func addBehavior(behavior : Behavior){
        
    }
    
    func exerciseBehavior(behavior : Behavior){
        
    }
    
    func exerciseBehavior(behavior : Behavior, when : BehaviorExecutionEnum){
        
    }
    
    
}
