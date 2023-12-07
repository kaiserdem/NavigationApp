//
//  NutritionScreenTwo.swift
//  NavigationApp
//
//  Created by kaiserdem  on 04.12.2023.
//

import SwiftUI

struct NutritionScreenTwo: View {
    
    @ObservedObject var coordinator: Coordinator
        
    var body: some View {
        VStack {
            
            Text("Nutrition Two")
                .font(.title)
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.green.opacity(0.4))
    }
}
