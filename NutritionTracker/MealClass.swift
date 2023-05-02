//
//  MealClass.swift
//  NutritionTracker
//
//  Created by Porter Hatch on 5/1/23.
//

import Foundation

class Meal: ObservableObject {
    @Published var foods: [Food] = []
}
