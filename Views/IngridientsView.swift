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
                IngridientCellView(ingridientResult: ingridientResult, ingridient: ingridient)
                
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
    var ingridientResult: IngridientResult
    var ingridient: Ingridient
    var body: some View {
        HStack{
            Text(ingridient.name)
            Spacer()
            HStack{
                Image(systemName: ingridient.selected  ?  "checkmark.circle.fill" : "circle")
                    .onTapGesture {
                        selectIngridient(result: ingridientResult, ingridient: ingridient)
                    }
                    .padding(.trailing, 10).padding(.leading, 10)
                Button {
                    deleteIngridient(result: ingridientResult, ingridient: ingridient)
                } label: {
                    Image(systemName: "trash")
                }
                .padding(.trailing, 5).padding(.leading, 5)
            }
            
        }
    }
}
