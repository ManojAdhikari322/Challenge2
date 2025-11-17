//
//  HomeView.swift
//  PodCasts
//
//  Created by Manoj Adhikari on 14/11/25.
//

import Foundation
import SwiftUI

struct HomeView: View {
    let podcasts = [
        Podcast(title: "On Air with Sanjay", author: "Sanjay & Manoj  #258", imageName: "podcast1"),
        Podcast(title: "iOS Dev Discussions", author: "Sean Allen", imageName: "podcast2"),
        Podcast(title: "Sushant with Uniq Poet", author: "Sushant Pradhan", imageName: "podcast3"),
        Podcast(title: "Learn Nepali with Vipas", author: "Vipas", imageName: "podcasts4"),
        Podcast(title: "On Purpose with Jay Shetty", author: "Jay Shetty", imageName: "podcast5")
    ]
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                HStack {
                    Text("Podcasts Collection")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    NavigationLink(destination: AllPodcastsView(podcasts: podcasts)) {
                        Text("See All")
                            .foregroundColor(.blue)
                            .font(.subheadline)
                    }
                }
                .padding(.horizontal)

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16) {
                        ForEach(podcasts) { podcast in
                            PodcastCard(podcast: podcast)
                        }
                    }
                    .padding(.horizontal)
                }

                Spacer()
            }
            .navigationTitle("Home")
        }
    }
}

struct Podcast: Identifiable {
    let id = UUID()
    let title: String
    let author: String
    let imageName: String
}
