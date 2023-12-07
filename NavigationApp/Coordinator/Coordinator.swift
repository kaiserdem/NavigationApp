//
//  Coordinator.swift
//  NavigationApp
//
//  Created by kaiserdem  on 05.12.2023.
//

import SwiftUI



class Coordinator: ObservableObject {
    @Published var activeTab = Tab.login
    
    @Published var loginsStack = NavigationPath()
    @Published var workoutsStack = NavigationPath()
    @Published var nutritionStack = NavigationPath()
    @Published var settingsStack = NavigationPath()    
    
    func tabClicked(_ tab: Tab) {
        
        if tab == activeTab {
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
        activeTab = tab
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

enum Workouts: Hashable {
    case workouts
    case workoutsTwo
    case workoutsThree
    
    static func == (lhs: Workouts, rhs: Workouts) -> Bool {
        lhs.hashValue == rhs.hashValue
    }
}

enum Login: Hashable {
    case login, loginTwo
    
    static func == (lhs: Login, rhs: Login) -> Bool {
        lhs.hashValue == rhs.hashValue
    }
}

enum Nutition: Hashable {
    case nutition
    case nutitionTwo
    case nutitionThree
    
    static func == (lhs: Nutition, rhs: Nutition) -> Bool {
        lhs.hashValue == rhs.hashValue
    }
}

enum Settings: Hashable {
    case settings
    case settingsTwo
    
    static func == (lhs: Settings, rhs: Settings) -> Bool {
        lhs.hashValue == rhs.hashValue
    }
}

//enum Page: String, Hashable {
//    case Login
//
//    case Workouts
//    case WorkoutsTwo
//    case WorkoutsThree
//
//    case Nutition
//    case NutitionTwo
//    case NutitionThree
//
//    case Settings
//    case SettingsTwo
//
//}
