//
//  Food+CoreDataProperties.swift
//  NutritionTracker
//
//  Created by Porter Hatch on 5/5/23.
//
//

import Foundation
import CoreData


extension FoodClass {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Food> {
        return NSFetchRequest<Food>(entityName: "Food")
    }

    @NSManaged public var name: String?
    @NSManaged public var foodAmount: Int16
    @NSManaged public var calories: Int16
    @NSManaged public var fats: Int16
    @NSManaged public var carbs: Int16
    @NSManaged public var protein: Int16

}

extension FoodClass : Identifiable {

}
