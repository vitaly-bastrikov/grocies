//
//  Dinner.swift
//  grocies
//
//  Created by Vitaly Bastrikov on 2022-11-13.
//

import Foundation

class DinnerResult: ObservableObject {
    @Published var dinners: [Dinner] = []
}

struct Dinner: Identifiable, Equatable {
    let id = UUID()
    let name: String
    let ingridients: [Ingridient]
    var num: Int = 0
}


