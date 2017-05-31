//
//  StageEmitter.swift
//  Monsters
//
//  Created by Eric Cancil on 5/31/17.
//  Copyright © 2017 Eric Cancil. All rights reserved.
//

import RxSwift

class StageEmitter{
    
    let disposeBag = DisposeBag()
    
    
    
    var observable = Observable<String>.create { (observer) -> Disposable in
        
        DispatchQueue.global(qos: .default).async {
            // Simulate some work
            Thread.sleep(forTimeInterval: 10)
            observer.onNext("Hello dummy 🐣")
            observer.onCompleted()
        }
        return Disposables.create()
    }
    /*
    observable.subscribe(onNext: { (element) in
    print(element)
    }).addDisposableTo(disposeBag)
    
    
    let observable = Observable<BehaviorExecutionEnum>.create{(observer) -> Disposable in
        
        Thread.sleep(forTimeInterval: 10)
        observer.onNext(BehaviorExecutionEnum.WallCollision);
        return Disposables.create();
    }
    
    
    
    observable.subscribe(onNext: { (element) in
    print(element)
    }).addDisposableTo(disposeBag)

 
 */
    
    
    
    func addBehaviorEmissions(to : Monster){
       
    }
    
}
