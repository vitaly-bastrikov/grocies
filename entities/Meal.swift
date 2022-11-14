//
//  Dinner.swift
//  grocies
//
//  Created by Vitaly Bastrikov on 2022-11-13.
//

import Foundation

class MealResult: ObservableObject {
    @Published var breakfast: [Meal] = []
    @Published var lunch: [Meal] = []
    @Published var dinner: [Meal] = []
}

struct Meal: Identifiable, Equatable {
    let id = UUID()
    let name: String
    let ingridients: [Ingridient]
    var num: Int = 0
}


