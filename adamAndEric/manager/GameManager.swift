//
//  GameManager.swift
//  Monsters
//
//  Created by Eric Cancil on 5/29/17.
//  Copyright © 2017 Eric Cancil. All rights reserved.
//

import Foundation

struct GameManager {
        
    let monsterManager: MonsterManager
    let monsterFactory: MonsterFactory
    
    init(monsterManager: MonsterManager, monsterFactory: MonsterFactory) {
        self.monsterManager = monsterManager
        self.monsterFactory = monsterFactory
    }
    
    func setup() {
        
        let monster : Monster = monsterFactory.createMonster(name: "DICKBAG")
        
        monsterManager.addMonster(monster: monster);
        
        let allMonsters : NSMutableSet? = monsterManager.getAllMonsters()
        
        _ = allMonsters?.map{print(($0 as! Monster).name)}
    }
}
