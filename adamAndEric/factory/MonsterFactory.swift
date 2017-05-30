//
//  MonsterFactory.swift
//  Monsters
//
//  Created by Eric Cancil on 5/30/17.
//  Copyright © 2017 Eric Cancil. All rights reserved.
//

protocol MonsterFactory : ContainerAware{
    func createMonster() -> Monster
}
