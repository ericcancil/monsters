//
//  DependenceRegistry.swift
//  Monsters
//
//  Created by Eric Cancil on 5/29/17.
//  Copyright © 2017 Eric Cancil. All rights reserved.
//

import Dip

extension DependencyContainer{
    
    static func startup() -> DependencyContainer{
        return DependencyContainer{ container in
            container.register(.singleton) { MonsterManagerImpl() as MonsterManager }
        }
    }
}
