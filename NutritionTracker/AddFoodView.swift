//
//  AddFoodView.swift
//  NutritionTracker
//
//  Created by Porter Hatch on 5/6/23.
//

import SwiftUI

struct AddFoodView: View {
    
        
    @State private var foodName = ""
    @State private var amount = ""
    @State private var calories = ""
    @State private var fats = ""
    @State private var carbs = ""
    @State private var protein = ""
    @Binding var listOfFoods: [[String]]
    
    var body: some View {
        // Take typed user input
        VStack{
            Text("Enter a new food")
            TextField("Food Name", text: $foodName)
                .textFieldStyle(CenteredTextFieldsStyle())
            TextField("Amount", text: $amount)
                .textFieldStyle(CenteredTextFieldsStyle())
            TextField("Calories", text: $calories)
                .textFieldStyle(CenteredTextFieldsStyle())
            TextField("Fats(g)", text: $fats)
                .textFieldStyle(CenteredTextFieldsStyle())
            TextField("Carbs(g)", text: $carbs)
                .textFieldStyle(CenteredTextFieldsStyle())
            TextField("Protein(g)", text: $protein)
                .textFieldStyle(CenteredTextFieldsStyle())
            Button(action: addFood) {
                Text("Add Food")
                }
            }
        .padding()
        }
    // Takes user input and appends the new food too the listOfFoods List.
    func addFood() {
        let newFoodItem = [
            foodName,
            amount,
            calories,
            fats,
            carbs,
            protein
        ]
        listOfFoods.append(newFoodItem)
        self.foodName = ""
        self.amount = ""
        self.calories = ""
        self.fats = ""
        self.carbs = ""
        self.protein = ""
            }
    }
    


struct AddFoodView_Previews: PreviewProvider {
    
    static var previews: some View {
        let foods = Binding.constant([[String]]())
        return AddFoodView(listOfFoods: foods)
    }
}

//Creates a style that centers the text and textboxes
struct CenteredTextFieldsStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .multilineTextAlignment(.center)
            .padding(.horizontal)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(8.0)
    }
}







