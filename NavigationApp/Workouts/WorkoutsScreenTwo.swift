//
//  WorkoutsScreenTwo.swift
//  NavigationApp
//
//  Created by kaiserdem  on 02.12.2023.
//

import SwiftUI

struct WorkoutsScreenTwo: View {
    
    @ObservedObject var coordinator: Coordinator
    
       var body: some View {
           VStack {
               
               Text("Workouts Two")
                   .font(.title)
               Spacer()
               
               Button {
                   coordinator.workoutsStack.append(Workouts.workoutsThree)
                   
               } label: {
                   Text("Go to Workouts Screen Three")
               }
               .padding(10)
               .background(Color.white)
               Spacer()
               
               Button {
                   coordinator.activeTab = .nutrition
               } label: {
                   Text("Go to Tab Nutition Screen first")
               }
               .padding(10)
               .background(Color.white)
               
               Button {
                   coordinator.activeTab = .nutrition
                   coordinator.nutritionStack.append(Nutition.nutitionTwo)

               } label: {
                   Text("Go to Tab Nutition Screen Two")
               }
               .padding(10)
               .background(Color.white)
               Spacer()
               
                   .navigationDestination(for: Workouts.self) { screen in
                       
                       switch screen {
                       case .workoutsThree:
                           WorkoutsScreenThree(coordinator: coordinator)
                           
                       default:
                           Text("Detail with some view")
                       }
                   }
               
               
           }
           .frame(maxWidth: .infinity, maxHeight: .infinity)
           .background(Color.purple.opacity(0.4))
       }
}
