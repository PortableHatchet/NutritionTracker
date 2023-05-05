//
//  FoodsView.swift
//  NutritionTracker
//
//  Created by Porter Hatch on 4/27/23.
//

import SwiftUI
import CoreData



struct FoodsView: View {
    @State private var foodName = ""
    @State private var amount = ""
    @State private var calories = ""
    @State private var fats = ""
    @State private var carbs = ""
    @State private var protein = ""
    
    var body: some View {
        
        VStack{
            Text("Enter a new food")
            TextField("Food Name", text: $foodName)
                .textFieldStyle(CenteredTextFieldsStyle())
            TextField("Amount", text: $amount)
                .textFieldStyle(CenteredTextFieldsStyle())
            TextField("Calories", text: $calories)
                .textFieldStyle(CenteredTextFieldsStyle())
            TextField("Fats", text: $fats)
                .textFieldStyle(CenteredTextFieldsStyle())
            TextField("Carbs", text: $carbs)
                .textFieldStyle(CenteredTextFieldsStyle())
            TextField("Protein", text: $protein)
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
