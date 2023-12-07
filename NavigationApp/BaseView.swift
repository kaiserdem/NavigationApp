//
//  BaseView.swift
//  NavigationApp
//
//  Created by kaiserdem  on 02.12.2023.
//

import SwiftUI

struct BaseView: View {
    
    @ObservedObject var coordinator = Coordinator()
    var body: some View {
        #warning("corrects issues of appears tab with delay provokes a problem of not working navigation")
        //NavigationStack {
            if coordinator.activeTab == .login {
                LoginScreen(coordinator: coordinator)
            } else {
                TabView(selection: $coordinator.activeTab.onUpdate {
                    coordinator.tabClicked(coordinator.activeTab)
                }) {
                    WorkoutsScreen(coordinator: coordinator)
                        .tabItem {
                            Label("Workouts", systemImage: "figure.run")
                        }
                        .tag(Tab.workouts)
                    
                    NutritionScreen(coordinator: coordinator)
                        .tabItem {
                            Label("Nutrition", systemImage: "fork.knife.circle.fill")
                        }
                        .tag(Tab.nutrition)
                    
                    UserSettingsScreen(coordinator: coordinator)
                        .tabItem {
                            Label("Settings", systemImage: "person.crop.circle")
                        }
                        .tag(Tab.settings)
                    
                }
                .onChange(of: coordinator.activeTab) { tab in
                    print(tab)
                }
            }
        //}
    }
    
    func setCurrentTab(_ tab: Tab) {
        coordinator.activeTab = tab
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BaseView()
    }
}
