//
//  ExerciseView.swift
//  WorkoutApp
//
//  Created by Julian Patterson on 2024-02-11.
//

import SwiftUI

struct ExerciseView: View {
    
    var body: some View {
        VStack {
            Text("Exercise")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()

        }
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
    
}

struct ExerciseView_Preview: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
