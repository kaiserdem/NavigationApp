//
//  UserSettingsScreen.swift
//  NavigationApp
//
//  Created by kaiserdem  on 02.12.2023.
//

import SwiftUI

struct UserSettingsScreen: View {
    
    @Binding var activeTab: Tab
    @ObservedObject var navController: NavController
    
    var body: some View {
        
        NavigationStack(path: $navController.settingsStack) {
            
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

//struct UserSettingsScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        UserSettingsScreen()
//    }
//}
