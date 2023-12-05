//
//  WorkoutsScreenTwo.swift
//  NavigationApp
//
//  Created by kaiserdem  on 02.12.2023.
//

import SwiftUI

struct WorkoutsScreenTwo: View {
    
    @Binding var activeTab: Tab
    @ObservedObject var navController: NavController
    
       var body: some View {
           VStack {
               
               Text("Workouts Two")
                   .font(.title)
               Spacer()
               
              
               Button {
                   navController.workoutsStack.append("WorkoutsThree")
               } label: {
                   Text("Go to Workouts Screen Three")
               }
               .padding(10)
               .background(Color.white)
               Spacer()
               
               Button {
                   activeTab = .nutrition
               } label: {
                   Text("Go to Tab Nutition Screen first")
               }
               .padding(10)
               .background(Color.white)
               
               Button {
                   activeTab = .nutrition
                   navController.nutritionStack.append("NutitionTwo")

               } label: {
                   Text("Go to Tab Nutition Screen Two")
               }
               .padding(10)
               .background(Color.white)
               Spacer()
               
               
                   .navigationDestination(for: String.self) { textValue in
                       
                       switch textValue {
                       case "WorkoutsThree":
                           WorkoutsScreenThree(activeTab: $activeTab, navController: navController)
                           
                       default:
                           Text("Detail with some view")
                       }
                   }
               
               
           }
           .frame(maxWidth: .infinity, maxHeight: .infinity)
           .background(Color.purple.opacity(0.4))
           .toolbar(.hidden, for: .tabBar)
       }
//    //let article: Person
//    let text: String
//
//
//    var body: some View {
//        NavigationStack(path: $navController.workoutsStack) {
//        VStack {
//            Text("Workouts Screen Two")
//                .font(.title)
//            Spacer()
//
//            //            NavigationLink("Go to Workouts Screen 3") {
//            //                WorkoutsScreenThree(navController: navController, article: Person(titleP: "gfe", authorP: "fd"))
//            //            }
//            //            Spacer()
//            //        }
//            //        .navigationDestination(for: Person.self) { person in
//            //            WorkoutsScreenThree(navController: navController, article: person)
//                }
//        }
//        .background(Color.purple)
//        .toolbar(.hidden, for: .tabBar)
//    }
}
