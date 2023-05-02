//
//  FoodClass.swift
//  NutritionTracker
//
//  Created by Porter Hatch on 5/1/23.
//

import Foundation

class Food: ObservableObject {
    @Published var foodName: String = ""
    @Published var foodAmt: String = ""
    @Published var calories: String = ""
    @Published var fats: String = ""
    @Published var carbs: String = ""
    @Published var protein: String = ""
    }
