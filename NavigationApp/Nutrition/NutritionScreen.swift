//
//  NutritionScreen.swift
//  NavigationApp
//
//  Created by kaiserdem  on 02.12.2023.
//

import SwiftUI


struct NutritionScreen: View {
    
    @ObservedObject var coordinator: Coordinator
    
    var body: some View {
        NavigationStack(path: $coordinator.nutritionStack) {
            VStack {
                Text("Nutrition Screen")
                    .font(.title)
                Spacer()
                
                Button {
                    coordinator.nutritionStack.append("Nutition.nutitionTwo")
                } label: {
                    Text("Go to Nutrition Screen Two")
                }
                .padding(10)
                .foregroundColor(.green)
                .background(.white)
                Spacer()
                
                Button {
                    coordinator.activeTab = .workouts
                    coordinator.workoutsStack.append(Workouts.workoutsTwo)
                } label: {
                    Text("Go to Workouts Screen Two")
                }
                .padding(10)
                .foregroundColor(.purple)
                .background(.white)
                Spacer()
                
                    .navigationDestination(for: String.self) { screen in
                        switch screen {
                        case "Nutition.nutitionTwo":
                            NutritionScreenTwo(coordinator: coordinator)
                        default:
                            Text("Detail with some view")
                        }
                    }
                
//                    .navigationDestination(for: Workouts.self) { screen in
//                        switch screen {
//                        case .workoutsTwo:
//                            WorkoutsScreenTwo(coordinator: coordinator)
//                        default:
//                            Text("Detail with some view")
//                        }
//                    }
            }
            .frame(maxWidth: .infinity)
            .background(Color.green.opacity(0.6))
        }
    }
}
