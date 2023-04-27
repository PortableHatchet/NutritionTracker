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
                    Label("Menu", systemImage: "list.dash")
                }
            FoodsView()
                .tabItem {
                    Label("Food", systemImage: "carrot.fill")
                }
            
            
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
