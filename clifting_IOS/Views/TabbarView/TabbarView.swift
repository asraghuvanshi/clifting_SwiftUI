//
//  TabbarView.swift
//  clifting_IOS
//
//  Created by tecH on 15/03/25.
//

import SwiftUI

struct TabbarView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView(selectedTab: $selectedTab)
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
                .tag(0)
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
                .tag(1)
            
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gearshape.fill")
                }
                .tag(2)
        }
        .onAppear {
            UITabBar.appearance().backgroundColor = UIColor.black.withAlphaComponent(0.6)
        }
    }
}

