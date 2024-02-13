//
//  HomeView.swift
//  WorkoutApp
//
//  Created by Julian Patterson on 2024-02-11.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        List {
            Section(header: headerView()) {
                Text("Content")
            }
        }
        .listStyle(GroupedListStyle())
        .navigationBarTitle("Home", displayMode: .large)
        .navigationBarHidden(false)
    }
    
    private func headerView() -> some View {
        Text("Home")
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HomeView()
        }
    }
}

