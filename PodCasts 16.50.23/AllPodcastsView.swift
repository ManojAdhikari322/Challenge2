//
//  AllPodcastsView.swift
//  PodCasts
//
//  Created by Manoj Adhikari on 14/11/25.
//

import Foundation
import SwiftUI

struct AllPodcastsView: View {
    let podcasts: [Podcast]
    
    let columns = [
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16)
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 10) {
                ForEach(podcasts) { podcast in
                    
                    // Make card tappable
                    NavigationLink(destination: PodcastDetailView(podcast: podcast)) {
                        VStack(alignment: .leading, spacing: 8) {
                            Image(podcast.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(height: 180)
                                .clipShape(RoundedRectangle(cornerRadius: 16))
                                .shadow(radius: 4)
                            
                            Text(podcast.title)
                                .font(.headline)
                                .lineLimit(1)
                            
                            Text(podcast.author)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                                .lineLimit(1)
                        }
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
            .padding()
        }
        .navigationTitle("All Podcasts")
    }
}
