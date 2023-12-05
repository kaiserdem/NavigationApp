//
//  WorkoutsScreenThree.swift
//  NavigationApp
//
//  Created by kaiserdem  on 03.12.2023.
//

import SwiftUI

struct WorkoutsScreenThree: View {
    
    @Binding var activeTab: Tab
    @ObservedObject var navController: NavController
    
    var body: some View {
        VStack {
            
            Text("Workouts Three")
                .font(.title)
                Spacer()
            
            Button {
                navController.workoutsStack = NavigationPath()
            } label: {
                Text("Go to Workouts first")
            }
            .padding(10)
            .background(Color.white)
            
            Button {
                if navController.workoutsStack.count > 0  {
                    navController.workoutsStack.removeLast()
                }
            } label: {
                Text("Go to Workouts Two")
            }
            .padding(10)
            .background(Color.white)
            Spacer()
            
            Button {
                activeTab = .nutrition
            } label: {
                Text("Go to Tab Nutrition")
            }
            .padding(10)
            .background(Color.white)
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.purple.opacity(0.2))
        .toolbar(.hidden, for: .tabBar)
    }
}
