//
//  ContentView.swift
//  PodCasts
//
//  Created by Manoj Adhikari on 14/11/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
        }
    }
}
