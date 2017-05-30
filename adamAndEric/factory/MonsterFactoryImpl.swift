//
//  MonsterFactoryImpl.swift
//  Monsters
//
//  Created by Eric Cancil on 5/30/17.
//  Copyright © 2017 Eric Cancil. All rights reserved.
//

import Dip

class MonsterFactoryImpl : MonsterFactory {
    
    fileprivate var container : DependencyContainer
    required init(container: DependencyContainer) {
        self.container = container;
    }
    
    func createMonster() -> Monster {
        return MonsterImpl()
    }
}
