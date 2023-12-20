//
//  WorkoutsScreen.swift
//  NavigationApp
//
//  Created by kaiserdem  on 02.12.2023.
//

import SwiftUI

struct WorkoutsScreen: View {
    
    @ObservedObject var coordinator: Coordinator
    @Binding var activeTab: Tab

    var body: some View {
        NavigationStack(path: $coordinator.workoutsStack) {
            VStack {
                
                Text("Workouts")
                    .font(.title)
                Spacer()
                
                Button {
                    coordinator.workoutsStack.append(Workouts.workoutsTwo)
                } label: {
                    Text("Go to Workouts Screen Two")
                }
                .foregroundColor(.purple)
                .padding(10)
                .background(Color.white)

                Button {
                    coordinator.workoutsStack.append(Workouts.workoutsTwo)
                    coordinator.workoutsStack.append(Workouts.workoutsThree)
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
                    coordinator.nutritionStack.append(Nutition.nutitionTwo)

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
                                
                    .navigationDestination(for: Workouts.self) { screen in
                        
                        switch screen {
                        case .workoutsTwo:
                            WorkoutsScreenTwo(coordinator: coordinator, activeTab: $activeTab)
                            
                        case .workoutsThree:
                            WorkoutsScreenThree(coordinator: coordinator, activeTab: $activeTab)

                        default:
                            Text("Detail with some view")
                        }
                    }
                
                    .navigationDestination(for: Nutition.self) { screen in
                        
                        switch screen {
                        case .nutitionTwo:
                            NutritionScreenTwo(coordinator: coordinator, activeTab: $activeTab)
                            
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
