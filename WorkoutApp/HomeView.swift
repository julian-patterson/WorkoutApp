//
//  HomeView.swift
//  WorkoutApp
//
//  Created by Julian Patterson on 2024-02-11.
//

import SwiftUI


struct HomeView: View {
    @State var selectedDate: Date = Date()
    var body: some View {
        List {
            VStack() {
                Text("Today:\n"  + selectedDate.formatted(date: .abbreviated, time: .omitted))
                    .font(.system(size: 32))
                    .bold()
                    .foregroundColor(Color.orange)
                    .padding()
                    .animation(.spring(), value: selectedDate)
                    .frame(width: 400, alignment: .topLeading)
//                Divider().frame(height: 1)
                DatePicker("Select Date", selection: $selectedDate, displayedComponents: [.date])
                    .padding(.horizontal)
                    .datePickerStyle(.graphical)
//                Divider()
            }
            .padding(.vertical, 10)
        }
        .listStyle(.plain)
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

