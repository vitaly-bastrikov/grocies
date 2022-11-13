//
//  Logic.swift
//  grocies
//
//  Created by Vitaly Bastrikov on 2022-11-13.
//

import Foundation



func addIngridients(result: IngridientResult, dinner: Dinner) {
    result.ingridients.append(contentsOf: dinner.ingridients)
    result.ingridients = Array(Set(result.ingridients))
}

func incrementDinnerNum(result: DinnerResult, dinner: Dinner) {
    var index = result.dinners.firstIndex(of: dinner)
    
    if let index = index {
        result.dinners[index].num = result.dinners[index].num + 1
    }
}


