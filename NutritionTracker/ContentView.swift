//
//  ContentView.swift
//  NutritionTracker
//
//  Created by Porter Hatch on 4/25/23.
//

import SwiftUI



struct ContentView: View {
    
    var viewDate = getDate()
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            
            Text(viewDate)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

func getDate() -> String{
    let date = Date()
    let df = DateFormatter()
    df.dateStyle = DateFormatter.Style.medium
    df.timeStyle = DateFormatter.Style.short
    let theDate = "\(df.string(from: date))"
    return theDate
}

