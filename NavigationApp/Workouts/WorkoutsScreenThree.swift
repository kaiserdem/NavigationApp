//
//  WorkoutsScreenThree.swift
//  NavigationApp
//
//  Created by kaiserdem  on 03.12.2023.
//

import SwiftUI

struct WorkoutsScreenThree: View {
    
    @ObservedObject var coordinator: Coordinator
    
    var body: some View {
        VStack {
            
            Text("Workouts Three")
                .font(.title)
                Spacer()
            
            Button {
                coordinator.workoutsStack = NavigationPath()
            } label: {
                Text("Go to Workouts first")
            }
            .padding(10)
            .background(Color.white)
            
            Button {
                if coordinator.workoutsStack.count > 0  {
                    coordinator.workoutsStack.removeLast()
                }
            } label: {
                Text("Go to Workouts Two")
            }
            .padding(10)
            .background(Color.white)
            Spacer()
            
            Button {
                coordinator.activeTab = .nutrition
            } label: {
                Text("Go to Tab Nutrition")
            }
            .padding(10)
            .background(Color.white)
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.purple.opacity(0.2))
    }
}
