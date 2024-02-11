//
//  HomeView.swift
//  WorkoutApp
//
//  Created by Julian Patterson on 2024-02-11.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        VStack {
            Text("Home")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()

        }
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
