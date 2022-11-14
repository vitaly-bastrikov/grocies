//
//  ContentView.swift
//  grocies
//
//  Created by Vitaly Bastrikov on 2022-10-25.
//

import SwiftUI


struct DinnerView: View {
    @StateObject var ingridientResult = IngridientResult()
    @StateObject var mealResult = MealResult()
    
    var body: some View {
        NavigationView{
                VStack {
                    Text("My Dinners").font(.largeTitle)
                    ScrollView{
                        
                        MealList(mealResult: mealResult, ingridientResult: ingridientResult, meals: mealResult.breakfast, type: "Breakfast")
                        
                        MealList(mealResult: mealResult, ingridientResult: ingridientResult, meals: mealResult.lunch, type: "Lunch")
                        
                        MealList(mealResult: mealResult, ingridientResult: ingridientResult, meals: mealResult.dinner, type: "Dinner")
                        
                    }
                    NavigationLink(destination: IngridientsView()) {
                        Text("check ingridients")
                            .padding()
                            .font(.title3)
                            .foregroundColor(Color(.white))
                            .background(
                                RoundedRectangle(cornerRadius: 30)
                                    .foregroundColor(.black)
                            )
                    }
                }
            }
        
        .environmentObject(ingridientResult)
        .onAppear {
            mealResult.breakfast = testBreakfast
            mealResult.lunch = testLunch
            mealResult.dinner = testDinner
        }
    }
}


struct DinnerView_Previews: PreviewProvider {
    static var previews: some View {
        DinnerView()
    }
}

struct MealCell: View {
    var mealResult: MealResult
    var ingridientResult: IngridientResult
    var meal: Meal
    var body: some View {
        HStack{
            Text(meal.name).font(.body).padding(5)
            Spacer()
            
            Button {
                incrementDinnerNum(result: mealResult, meal: meal)
                addIngridients(result: ingridientResult, meal: meal)
            } label: {
                Image(systemName: "plus.circle.fill")
            }.padding(.trailing, 5)
            
            Text(String(meal.num)).bold()
        }
    }
}

struct MealList: View {
    var mealResult: MealResult
    var ingridientResult: IngridientResult
    var meals: [Meal]
    var type: String
    
    var body: some View {
        
        VStack {
            Text(type)
                .font(.title3).bold()
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            VStack{
                ForEach(meals) {meal in
                    MealCell(mealResult: mealResult, ingridientResult: ingridientResult, meal: meal)
                }
            }
            .padding(.leading, 5).padding(.trailing, 20)

        }
    }
}


