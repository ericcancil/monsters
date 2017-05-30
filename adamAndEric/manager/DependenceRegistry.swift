//
//  DependenceRegistry.swift
//  Monsters
//
//  Created by Eric Cancil on 5/29/17.
//  Copyright © 2017 Eric Cancil. All rights reserved.
//

import Dip

// MOVE THIS

protocol MonsterFactory {
    
    func createMonster(name: String) -> Monster
}

class MonsterFactoryImpl: MonsterFactory {
    
    let container: DependencyContainer
    
    init(container: DependencyContainer) {
        self.container = container
    }
    
    func createMonster(name: String) -> Monster {
        return MonsterImpl( name: name, gameManager: try! container.resolve() )
    }
}

// END MOVE THIS

public enum MonsterFactoryTags: String, DependencyTagConvertible {
    case firstFactory
    case secondFactory
}


extension DependencyContainer {
    
    static func startup() -> DependencyContainer {
        
        return DependencyContainer { container in
            
            container.register(.singleton) { GameManager(monsterManager: $0, monsterFactory: $1) }
            
            container.register(.singleton) { MonsterFactoryImpl(container: container) as MonsterFactory }
            
            container.register(tag: MonsterFactoryTags.firstFactory) { MonsterFactoryImpl(container: container) as MonsterFactory }
            
            container.register(.singleton) { MonsterManagerImpl() as MonsterManager }
        }
    }
}
