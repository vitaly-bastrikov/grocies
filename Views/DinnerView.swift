//
//  ContentView.swift
//  grocies
//
//  Created by Vitaly Bastrikov on 2022-10-25.
//

import SwiftUI


struct DinnerView: View {
    @StateObject var ingridientResult = IngridientResult()
    @StateObject var dinnerResult = DinnerResult()
    
    var body: some View {
        NavigationView{
            VStack {
                Text("My Dinners").font(.largeTitle)
                List(dinnerResult.dinners) {dinner in
                    DinnerCell(name: dinner.name, num: dinner.num)
                        .onTapGesture {
                            addIngridients(result: ingridientResult, dinner: dinner)
                            incrementDinnerNum(result: dinnerResult, dinner: dinner)
                            
                        }
                }
                NavigationLink(destination: IngridientsView()) {
                    Text("check ingridients")
                        .padding()
                        .font(.title2)
                        .foregroundColor(Color(.white))
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(.black)
                        )
                        .cornerRadius(30)
                        
                }
                
            }
        }
        .environmentObject(ingridientResult)
        .onAppear {
            dinnerResult.dinners = testDinners
        }
    }
}


struct DinnerView_Previews: PreviewProvider {
    static var previews: some View {
        DinnerView()
    }
}

struct DinnerCell: View {
    var name: String
    var num: Int
    var body: some View {
        HStack{
            Text(name)
            Spacer()
            Text(String(num))
        }
    }
}



