//
//  HomeView.swift
//  clifting_IOS
//
//  Created by tecH on 15/03/25.
//


import SwiftUI

struct HomeView: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        VStack {
            Text("Home Screen")
            
            Button("Go to Settings") {
                selectedTab = 2
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
    }
}
