//
//  NutritionScreen.swift
//  NavigationApp
//
//  Created by kaiserdem  on 02.12.2023.
//

import SwiftUI


struct NutritionScreen: View {
    
    @Binding var activeTab: Tab
    @ObservedObject var navController: NavController
    
    var body: some View {
        NavigationStack(path: $navController.nutritionStack) {
            VStack {
                Text("Nutrition Screen")
                    .font(.title)
                Spacer()
                
                Button {
                    activeTab = .nutrition
                    navController.nutritionStack.append("NutitionTwo")
                } label: {
                    Text("Go to Nutrition Screen Two")
                }
                .padding(10)
                .foregroundColor(.green)
                .background(.white)
                Spacer()
                
                Button {
                    activeTab = .workouts
                    navController.workoutsStack.append("WorkoutsTwo")
                } label: {
                    Text("Go to Workouts Screen Two")
                }
                .padding(10)
                .foregroundColor(.purple)
                .background(.white)
                Spacer()
                
                    .navigationDestination(for: String.self) { textValue in
                        
                        switch textValue {
                        case "NutitionTwo":
                            NutritionScreenTwo(activeTab: $activeTab, navController: navController)
                        default:
                            Text("Detail with some view")
                        }
                    }
            }
            .frame(maxWidth: .infinity)
            .background(Color.green.opacity(0.6))
        }
    }
}
