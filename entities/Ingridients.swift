//
//  Ingridients.swift
//  grocies
//
//  Created by Vitaly Bastrikov on 2022-11-13.
//

import Foundation

class IngridientResult: ObservableObject {
    @Published var ingridients: [Ingridient] = []
}

struct Ingridient: Identifiable, Hashable {
    let id = UUID()
    let name: String
}

