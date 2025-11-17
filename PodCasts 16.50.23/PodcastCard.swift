//
//  PodcastCard.swift
//  PodCasts
//
//  Created by Manoj Adhikari on 14/11/25.
//

import Foundation
import SwiftUI

struct PodcastCard: View {
    let podcast: Podcast

    var body: some View {
        NavigationLink(destination: PodcastDetailView(podcast: podcast)) {
            VStack(alignment: .leading, spacing: 8) {
                Image(podcast.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 200)
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
            .frame(width: 200, alignment: .leading)
        }
        .buttonStyle(PlainButtonStyle())
    }
}
