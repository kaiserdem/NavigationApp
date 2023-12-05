//
//  ContentView.swift
//  NavigationApp
//
//  Created by kaiserdem  on 02.12.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var activeTab = Tab.login
    @ObservedObject var navController = NavController()


    var body: some View {
        
        if activeTab == .login {
            LoginScreen(activeTab: $activeTab, navController: navController)
        } else {
            TabView(selection: $activeTab.onUpdate {
                   navController.tabClicked(activeTab)
               }) {
                   WorkoutsScreen(activeTab: $activeTab, navController: navController)
                       .tabItem {
                           Label("Workouts", systemImage: "figure.run")
                       }
                       .tag(Tab.workouts)
                   
                   NutritionScreen(activeTab: $activeTab, navController: navController)
                       .tabItem {
                           Label("Nutrition", systemImage: "fork.knife.circle.fill")
                       }
                       .tag(Tab.nutrition)
                   
                   UserSettingsScreen(activeTab: $activeTab, navController: navController)
                       .tabItem {
                           Label("Settings", systemImage: "person.crop.circle")
                       }
                       .tag(Tab.settings)
                   
               }
            .onChange(of: activeTab) { tab in
                    print(tab)
                }
        }
    }
    
    func setCurrentTab(_ tab: Tab) {
        activeTab = tab
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
