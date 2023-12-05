//
//  LoginScreen.swift
//  NavigationApp
//
//  Created by kaiserdem  on 04.12.2023.
//

import SwiftUI

struct LoginScreen: View {
    
    @Binding var activeTab: Tab
    @ObservedObject var navController: NavController
    
    var body: some View {
        NavigationStack(path: $navController.settingsStack) {
            VStack {
                
                Text("Login Screen")
                    .font(.title)
                Spacer()
                
                
                Button("Go to Tab Workouts") {
                    activeTab = .workouts
                }
                .foregroundColor(.purple)
                .padding(10)
                .background(Color.white)
                Spacer()
            }
            .frame(maxWidth: .infinity)
            .background(Color.yellow.opacity(0.5))
        }
    }
}
