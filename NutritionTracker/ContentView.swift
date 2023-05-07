//
//  ContentView.swift
//  NutritionTracker
//
//  Created by Porter Hatch on 4/25/23.
//

import SwiftUI


// Main view for the app. Allows for switching between a schedule that logs meals and a page to view and input new foods
struct ContentView: View {
    
    var body: some View {
        TabView {
            ScheduleView()
                .tabItem {
                    Label("Log a Meal", systemImage: "list.dash")
                }
            FoodsView()
                .tabItem {
                    Label("Foods", systemImage: "carrot.fill")
                }
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


