//
//  WorkoutsScreen.swift
//  NavigationApp
//
//  Created by kaiserdem  on 02.12.2023.
//

import SwiftUI

struct WorkoutsScreen: View {
    
    @Binding var activeTab: Tab
    @ObservedObject var navController: NavController
    
    var body: some View {
        NavigationStack(path: $navController.workoutsStack) {
            VStack {
                
                Text("Workouts")
                    .font(.title)
                Spacer()
                
                Button {
                    navController.workoutsStack.append("WorkoutsTwo")
                } label: {
                    Text("Go to Workouts Screen Two")
                }
                .foregroundColor(.purple)
                .padding(10)
                .background(Color.white)

                Button {
                    navController.workoutsStack.append("WorkoutsTwo")
                    navController.workoutsStack.append("WorkoutsThree")
                } label: {
                    Text("Go to Workouts Screen Three")
                }
                .foregroundColor(.purple)
                .padding(10)
                .background(Color.white)
                Spacer()
                
                Button {
                    activeTab = .nutrition
                } label: {
                    Text("Go to Tab Nutition Screen")
                }
                .foregroundColor(.green)
                .padding(10)
                .background(Color.white)
                
                Button {
                    activeTab = .nutrition
                    navController.nutritionStack.append("NutitionTwo")

                } label: {
                    Text("Go to Tab Nutition Screen 2")
                }
                .foregroundColor(.green)
                .padding(10)
                .background(Color.white)
                Spacer()
                
                Button {
                    activeTab = .login
                } label: {
                    Text("Back to Login screen")
                }
                .foregroundColor(.yellow)
                .padding(10)
                .background(Color.white)
                Spacer()
                                
                    .navigationDestination(for: String.self) { textValue in
                        
                        switch textValue {
                        case "WorkoutsTwo":
                            WorkoutsScreenTwo(activeTab: $activeTab, navController: navController)
                            
                        case "WorkoutsThree":
                            WorkoutsScreenThree(activeTab: $activeTab, navController: navController)
                            
                        case "NutitionTwo":
                            NutritionScreenTwo(activeTab: $activeTab, navController: navController)
                            
                        default:
                            Text("Detail with some view")
                        }
                    }
            }
            .frame(maxWidth: .infinity)
            .background(Color.purple.opacity(0.7))
        }
    }
}
