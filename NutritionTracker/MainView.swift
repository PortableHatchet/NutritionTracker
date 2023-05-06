//
//  MainView.swift
//  NutritionTracker
//
//  Created by Porter Hatch on 4/27/23.
//

import SwiftUI

struct MainView: View {
    
    var body: some View {
        
        TabView {
            ContentView()
                .tabItem {
                    Label("Log a Meal", systemImage: "list.dash")
                }
            FoodsView()
                .tabItem {
                    Label("Foods", systemImage: "carrot.fill")
                }
            let foods = Binding.constant([[String]]())
            AddFoodView(listOfFoods: foods)
                .tabItem {
                    Label("Add New Food", systemImage: "fork.knife.circle")
                }
            }
        }
    }
        
        struct MainView_Previews: PreviewProvider {
            static var previews: some View {
                MainView()
            }
        }
    

