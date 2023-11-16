//
//  ContentView.swift
//  BrewLog
//
//  Created by Sylvain Bauvais on 14/11/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            ExploreView()
                .tabItem { Label("Explorer", systemImage: "magnifyingglass") }
            
            CollectionsListView()
                .tabItem { Label("Collections", systemImage: "square.stack.3d.down.right") }
            
            ProfileView()
                .tabItem { Label("Profil", systemImage: "person") }
        }

    }
}

#Preview {
    ContentView()
}
