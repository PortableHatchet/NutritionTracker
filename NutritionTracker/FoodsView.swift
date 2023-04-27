//
//  FoodsView.swift
//  NutritionTracker
//
//  Created by Porter Hatch on 4/27/23.
//

import SwiftUI




struct FoodsView: View {
    
    @State var newFood: String = ""

    var body: some View {
        
        TextField("Enter a new food", text: $newFood)
    }
}

struct FoodsView_Previews: PreviewProvider {
    static var previews: some View {
        FoodsView()
    }
}
