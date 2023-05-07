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
    
    @Binding var listOfFoods: [[String]]
    @State private var showPopup = false
    
    var viewWeekday = getWeekDay()
    var viewDate = getDate()
    
    var body: some View {
        
        NavigationView
        {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text(viewWeekday)
                Text(viewDate)
                //Looops through the hours and creates a button for each that when tapped opens a popup of the FoodsView
                List {
                    ForEach(hours, id: \.self) { hour in
                        Button(hour, action: {
                            showPopup = true
                        })
                        .sheet(isPresented: $showPopup) {
                            FoodsView()
                            Text(hour)
                        }
                    }
                }
            }
        }
    }
}

struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        let foods = Binding.constant([[String]]())
        ScheduleView(listOfFoods: foods)
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
