//
//  ContentView.swift
//  NutritionTracker
//
//  Created by Porter Hatch on 4/25/23.
//

import SwiftUI


// Main view for the app. Allows for switching between a schedule that logs meals and a page to view and input new foods
struct ContentView: View {

    @State private var foods = [[String]]()
    var body: some View {
        TabView {
            ScheduleView(listOfFoods: $foods)
                .tabItem {
                    Label("Log a Meal", systemImage: "list.dash")
                }
            FoodsView()
                .tabItem {
                    Label("Foods", systemImage: "carrot.fill")
                }
            
            //AddFoodView(listOfFoods: $foods)
            //    .tabItem {
            //        Label("Add New Food", systemImage: "fork.knife.circle")
            //    }
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


