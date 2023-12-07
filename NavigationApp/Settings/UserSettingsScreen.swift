//
//  UserSettingsScreen.swift
//  NavigationApp
//
//  Created by kaiserdem  on 02.12.2023.
//

import SwiftUI

struct UserSettingsScreen: View {
    
    @ObservedObject var coordinator: Coordinator
    
    var body: some View {
        
        NavigationStack(path: $coordinator.settingsStack) {
            
            Text("UserSettingsScreen")
                .font(.title)
            Spacer()
            
            
            Button("Go Workouts") {
                coordinator.activeTab = .workouts
            }
            Spacer()
            
        }
    }
}
