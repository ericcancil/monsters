//
//  GameManager.swift
//  Monsters
//
//  Created by Eric Cancil on 5/29/17.
//  Copyright © 2017 Eric Cancil. All rights reserved.
//

import Foundation
import Dip

struct GameManager{
    
    var _monsterManager = InjectedWeak<MonsterManager>()
    fileprivate var monsterManager : MonsterManager? { return _monsterManager.value }
    
    func setup(){
        let monster : Monster = MonsterImpl()
        
        monsterManager?.addMonster(monster: monster);
        
        let allMonsters : NSMutableSet? = monsterManager?.getAllMonsters()
        
        allMonsters?.map{print(($0 as! Monster).name)}
    }
}
