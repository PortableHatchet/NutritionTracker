//
//  FoodsView.swift
//  NutritionTracker
//
//  Created by Porter Hatch on 4/27/23.
//

import SwiftUI
import Foundation



struct FoodsView: View {
    
    @State var listOfFoods: [[String]] = [
        ["Egg", "1", "72", "4.8", "0.4", "6.3"],
        ["Bread slice", "1 slice", "98", "1.2", "18", "3.3"],
        ["Peanut butter", "2 Tbsp", "188", "16", "7.7", "7"],
        ["Bacon", "3 slices", "161", "12", "0.6", "12"],
        ["Butter", "1 Tbsp", "102", "12", "0", "0.1"],
        ["Jam", "1 Tbsp", "56", "0", "14", "0.1"],
        ["Chicken breast", "1 breast", "198", "4.3", "0", "37"],
        ["Steamed broccoli", "0.5 cup", "27", "0.3", "5.6", "1.9"],
        ["Rice", "1 cup", "205", "0.4", "45", "4.3"]
        ]
    
    var body: some View {
        
        AddFoodView(listOfFoods: $listOfFoods)
        List {
            ForEach(listOfFoods, id: \.self) { food in
                VStack {
                    Text("\(food[0]) Amount: \(food[1])")
                        .padding()
                    HStack
                    {
                        Text("Calories \(food[2])")
                        Text("Fats(g) \(food[3])")
                        Text("Carbs(g) \(food[4])")
                        Text("Protein(g) \(food[5])")

                    }
                }
                
            }
        }
        
        
        
    }
}

struct FoodsView_Previews: PreviewProvider {
    static var previews: some View {
        FoodsView()
    }
}

