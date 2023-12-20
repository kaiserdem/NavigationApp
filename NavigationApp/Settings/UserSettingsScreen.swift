//
//  UserSettingsScreen.swift
//  NavigationApp
//
//  Created by kaiserdem  on 02.12.2023.
//

import SwiftUI

struct UserSettingsScreen: View {
    
    @ObservedObject var coordinator: Coordinator
    @Binding var activeTab: Tab

    var body: some View {
        
        NavigationStack(path: $coordinator.settingsStack) {
            
            Text("UserSettingsScreen")
                .font(.title)
            Spacer()
            
            
            Button("Go Workouts") {
                activeTab = .workouts
            }
            Spacer()
            
        }
    }
}
