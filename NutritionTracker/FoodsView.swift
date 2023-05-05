//
//  FoodsView.swift
//  NutritionTracker
//
//  Created by Porter Hatch on 4/27/23.
//

import SwiftUI
import CoreData



struct FoodsView: View {
    
    
    @NSManagedObject var foodItems = Food()
    var body: some View {
        
        VStack{
            Text("Enter a new food")
            TextField("Food Name", text: $foodItems.foodName)
                .textFieldStyle(CenteredTextFieldsStyle())
            TextField("Amount", text: $foodItems.foodAmt)
                .textFieldStyle(CenteredTextFieldsStyle())
            TextField("Calories", text: $foodItems.calories)
                .textFieldStyle(CenteredTextFieldsStyle())
            TextField("Fats", text: $foodItems.fats)
                .textFieldStyle(CenteredTextFieldsStyle())
            TextField("Carbs", text: $foodItems.carbs)
                .textFieldStyle(CenteredTextFieldsStyle())
            TextField("Protein", text: $foodItems.protein)
                .textFieldStyle(CenteredTextFieldsStyle())
        }
        
    }
}

struct FoodsView_Previews: PreviewProvider {
    static var previews: some View {
        FoodsView()
    }
}
struct CenteredTextFieldsStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .multilineTextAlignment(.center)
            .padding(.horizontal)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(8.0)
    }
}
