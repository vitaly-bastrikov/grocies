//
//  IngridientsView.swift
//  grocies
//
//  Created by Vitaly Bastrikov on 2022-11-13.
//

import SwiftUI

struct IngridientsView: View {
    @EnvironmentObject var ingridientResult: IngridientResult
    
    var body: some View {
        VStack {
            List(ingridientResult.ingridients) {ingridient in
                Text(ingridient.name)
            }
        }
        
    }
}

struct IngridientsView_Previews: PreviewProvider {
    static var previews: some View {
        IngridientsView()
    }
}
