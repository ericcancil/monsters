//
//  Monster.swift
//  Monsters
//
//  Created by Eric Cancil on 5/29/17.
//  Copyright © 2017 Eric Cancil. All rights reserved.
//

import Foundation

protocol Monster {
    
    var name:String { get set }
    
    func addBehavior(behavior : Behavior)
    func exerciseBehavior(behavior : Behavior)
    func exerciseBehavior(behavior : Behavior, when : BehaviorExecutionEnum)
    
}
