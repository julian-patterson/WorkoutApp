//
//  ContentView.swift
//  WorkoutApp
//
//  Created by Julian Patterson on 2024-02-11.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTabIndex = 0
    
    var body: some View {
        NavigationView {
            TabView(selection: $selectedTabIndex) {
                HomeView()
                    .tabItem {
                        Label("Home", systemImage: "house.circle.fill")
                    }
                    .tag(0)
                
                ExerciseView()
                    .tabItem {
                        Label("New", systemImage: "figure.walk.circle.fill")
                    }
                    .tag(1)
                
                SettingsView()
                    .tabItem {
                        Label("Settings", systemImage: "gear.circle")
                    }
                    .tag(2)
            }
            .accentColor(.orange)
            .background()
            .navigationBarTitle(navBarTitle(for: selectedTabIndex))
            .navigationBarHidden(false)
            .navigationBarTitleDisplayMode(.large)
        }
    }
    
    private func navBarTitle(for index: Int) -> String {
        switch index {
        case 0:
            return "Home"
        case 1:
            return "Exercise"
        case 2:
            return "Settings"
        default:
            return ""
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


