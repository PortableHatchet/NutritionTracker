//
//  ScheduleView.swift
//  NutritionTracker
//
//  Created by Porter Hatch on 5/6/23.
//

import SwiftUI

struct ScheduleView: View {
    
    let hours = ["12:00 am", "1:00 am", "2:00 am", "3:00 am",
                 "4:00 am", "5:00 am", "6:00 am", "7:00 am",
                 "8:00 am", "9:00 am", "10:00 am", "11:00 am",
                 "12:00 pm", "1:00 pm", "2:00 pm", "3:00 pm",
                 "4:00 pm", "5:00 pm", "6:00 pm", "7:00 pm",
                 "8:00 pm", "9:00 pm", "10:00 pm", "11:00 pm", ]
    
    @State private var foodList: [[String]] = [
        ["Egg", "1", "72", "4.8", "0.4", "6.3"],
        ["Bread Slice", "1 slice", "98", "1.2", "18", "3.3"],
        ["Peanut Butter", "2 Tbsp", "188", "16", "7.7", "7"],
        ["Bacon", "3 slices", "161", "12", "0.6", "12"],
        ["Butter", "1 Tbsp", "102", "12", "0", "0.1"],
        ["Jam", "1 Tbsp", "56", "0", "14", "0.1"],
        ["Chicken Breast", "1 breast", "198", "4.3", "0", "37"],
        ["Steamed Broccoli", "0.5 cup", "27", "0.3", "5.6", "1.9"],
        ["Rice", "1 cup", "205", "0.4", "45", "4.3"]
    ]
    
    
    
    var viewWeekday = getWeekDay()
    var viewDate = getDate()
    @State var mealList = [String: [String]]()
    func addToMeal(hourTime: String, addedFood: [String]) {
        for food in addedFood {
                if var meal = mealList[hourTime] {
                    meal.append(food)
                    mealList[hourTime] = meal
                } else {
                    mealList[hourTime] = [food]
                }
            }
    }
   
    @State private var showPopup = false
    var body: some View {
        //NavigationView
        //{
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text(viewWeekday)
            Text(viewDate)
            //Loops through the hours and creates a button for each that when tapped opens a popup of the FoodsView
            List {
                ForEach(hours, id: \.self) { hour in
                    Button(hour) {
                        showPopup = true
                    }
                    .sheet(isPresented: $showPopup) {
                        Text(hour)
                        ForEach (foodList, id: \.self) { food in
                            Button(action: {
                                addToMeal(hourTime: hour, addedFood: food)
                            }) {
                                VStack {
                                    Text(food[0])
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}


struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView()
    }
}

func getWeekDay() -> String{
    let date = Date()
    let weekDF = DateFormatter()
    weekDF.dateFormat = "EEEE"
    let dayOfWeek: String = weekDF.string(from: date)
    return dayOfWeek
}

func getDate() -> String{
    let date = Date()
    let df = DateFormatter()
    df.dateStyle = DateFormatter.Style.medium
    // df.timeStyle = DateFormatter.Style.short
    let theDate = "\(df.string(from: date))"
    return theDate
}


