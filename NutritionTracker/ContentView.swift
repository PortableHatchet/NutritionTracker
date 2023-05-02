//
//  ContentView.swift
//  NutritionTracker
//
//  Created by Porter Hatch on 4/25/23.
//

import SwiftUI



struct ContentView: View {
    
    var viewWeekday = getWeekDay()
    var viewDate = getDate()
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text(viewWeekday)
            Text(viewDate)
            Spacer()
        }
        .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
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

