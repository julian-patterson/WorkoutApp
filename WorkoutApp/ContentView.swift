//
//  ContentView.swift
//  WorkoutApp
//
//  Created by Julian Patterson on 2024-02-11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.circle.fill")
                }
            
            ExerciseView()
                .tabItem {
                    Label("New", systemImage: "figure.walk.circle.fill")
                }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
        .accentColor(.orange)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
