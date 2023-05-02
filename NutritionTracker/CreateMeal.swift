//
//  CreateMeal.swift
//  NutritionTracker
//
//  Created by Porter Hatch on 5/1/23.
//

import SwiftUI

struct CreateMeal: View {
    
    @StateObject var mealClass = Meal()
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct CreateMeal_Previews: PreviewProvider {
    static var previews: some View {
        CreateMeal()
    }
}
