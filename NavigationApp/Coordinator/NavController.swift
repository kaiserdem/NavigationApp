//
//  NavController.swift
//  NavigationApp
//
//  Created by kaiserdem  on 05.12.2023.
//

import SwiftUI



class NavController: ObservableObject {
    private var currentTab = Tab.workouts
    @Published var loginsStack = NavigationPath()
    @Published var workoutsStack = NavigationPath()
    @Published var nutritionStack = NavigationPath()
    @Published var settingsStack = NavigationPath()
    
    func tabClicked(_ tab: Tab) {
        
        if tab == currentTab {
            switch tab {

            case .workouts:
                workoutsStack.removeLast(workoutsStack.count)
            case .nutrition:
                nutritionStack.removeLast(nutritionStack.count)
            case .settings:
                settingsStack.removeLast(settingsStack.count)
            case .login:
                loginsStack.removeLast(settingsStack.count)
                
            }
        }
        currentTab = tab
    }
}


extension Binding {
    func onUpdate(_ closure: @escaping () -> Void) -> Binding {
        Binding(get: {
            wrappedValue
        }, set: { newValue in
            wrappedValue = newValue
            closure()
        })
    }
}

enum Tab {
    case login
    case workouts
    case nutrition
    case settings
}
