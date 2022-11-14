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
                IngridientCellView(name: ingridient.name, selected: ingridient.selected)
                    .onTapGesture {
                        selectIngridient(result: ingridientResult, ingridient: ingridient)
                    }
            }
        }
        
    }
}

struct IngridientsView_Previews: PreviewProvider {
    static var previews: some View {
        IngridientsView()
            .environmentObject(IngridientResult())
    }
}

struct IngridientCellView: View {
    var name: String
    var selected: Bool
    var body: some View {
        HStack{
            Text(name)
            Spacer()
            Image(systemName: selected ?  "checkmark.circle.fill" : "circle")
        }
    }
}
