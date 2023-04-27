//
//  ContentView.swift
//  NutritionTracker
//
//  Created by Porter Hatch on 4/25/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("\(Date())")
            Button("Log a meal", action: {print("Meal was logged")})
            Button("Add a food", action: {print("food added")})
            Button("Create a Meal", action: {print("meal created")})
            Button("Look at nutrition stats", action: {print("this is the action")})

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
