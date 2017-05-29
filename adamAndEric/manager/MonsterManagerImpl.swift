//
//  MonsterManagerImpl.swift
//  Monsters
//
//  Created by Eric Cancil on 5/29/17.
//  Copyright © 2017 Eric Cancil. All rights reserved.
//

import Foundation

class MonsterManagerImpl : MonsterManager {
    
    fileprivate var monsters : NSMutableSet = [];
    
    func addMonster(monster : Monster){
        monsters.add(monster);
    }
    
    func removeMonster(monster : Monster){
        monsters.remove(monster);
    }
    
    func getAllMonsters() -> NSMutableSet {
        return monsters;
    }
}
