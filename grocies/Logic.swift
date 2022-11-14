//
//  Logic.swift
//  grocies
//
//  Created by Vitaly Bastrikov on 2022-11-13.
//

import Foundation



func addIngridients(result: IngridientResult, meal: Meal) {
    result.ingridients.append(contentsOf: meal.ingridients)
    result.ingridients = Array(Set(result.ingridients))
}

func incrementDinnerNum(result: MealResult, meal: Meal) {
    var index: Int?
    
    index = result.breakfast.firstIndex(of: meal)
    if let i = index {
        result.breakfast[i].num = result.breakfast[i].num + 1
        return
    }
    
    index = result.lunch.firstIndex(of: meal)
    if let i = index {
        result.lunch[i].num = result.lunch[i].num + 1
        return
    }
    
    index = result.dinner.firstIndex(of: meal)
    if let i = index {
        result.dinner[i].num = result.dinner[i].num + 1
        return
    }
    
}

func selectIngridient(result: IngridientResult, ingridient: Ingridient) {
    let index = result.ingridients.firstIndex(of: ingridient)
    if let index = index {
        result.ingridients[index].selected.toggle()
    }
}

func deleteIngridient(result: IngridientResult, ingridient: Ingridient) {
    let index = result.ingridients.firstIndex(of: ingridient)
    if let index = index {
        result.ingridients.remove(at: index)
    }
}

