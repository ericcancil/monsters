//
//  MonsterImpl.swift
//  Monsters
//
//  Created by Eric Cancil on 5/29/17.
//  Copyright © 2017 Eric Cancil. All rights reserved.
//

import Foundation

class MonsterImpl : Monster {
    
    var name :String = ""
    
    fileprivate var behaviorDictionary : [BehaviorExecutionEnum : NSMutableSet] = [:]
    //var emissionMap:Dictionary = [BehaviorExecutionEnum : NSMutableSet]()
    
    init(){
        
    }

    
    func exerciseBehavior(behavior : Behavior, when : BehaviorExecutionEnum){
        if(behaviorDictionary[when] == nil){
            behaviorDictionary[when] = NSMutableSet()
        }
        let dict = behaviorDictionary[when]
        dict?.add(behavior);
    }
    
    func getAllBehaviors<T>(forExecutionType : BehaviorExecutionEnum?) -> T {
        if let type = forExecutionType{
            return behaviorDictionary[type] as! T
        }else{
            return behaviorDictionary as! T
        }
    }
    
    
}
