//
//  ViewControllerViewModel.swift
//  MVVMiOSExample
//
//  Created by ian schoenrock on 3/6/19.
//  Copyright © 2019 ian schoenrock. All rights reserved.
//

import Foundation

protocol CountIncrementerDelegate {
    func didHitFive()
}

struct ViewControllerViewModel{
    
    var viewModelCounterLabel: String
    var viewModelCounter: Int = 0
    var delegate: CountIncrementerDelegate?
    
    mutating func incrementCountLogic(){
        viewModelCounter += 1
        viewModelCounterLabel = String(viewModelCounter)
        
        if(viewModelCounter == 5){
            delegate?.didHitFive()
        }
    }
}
