//
//  PodcastDetailView.swift
//  PodCasts
//
//  Created by Manoj Adhikari on 14/11/25.
//

import Foundation
import SwiftUI

struct PodcastDetailView: View {
    let podcast: Podcast
    
    var body: some View {
        ZStack {
            //style blurred background
            Image(podcast.imageName)
                .resizable()
                .scaledToFill()
                .blur(radius: 40)
                .opacity(0.45)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 24) {
                
                // Main cover
                Image(podcast.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 260, height: 260)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .shadow(radius: 10)
                    .padding(.top, 40)
                
                Text(podcast.title)
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
                Text(podcast.author)
                    .font(.subheadline)
                    .foregroundColor(.secondary)

                // Style Play Button
                Button(action: {}) {
                    HStack(spacing: 8) {
                        Image(systemName: "play.fill")
                            .font(.title3)
                        
                        Text("Play")
                            .font(.headline)
                            .fontWeight(.semibold)
                    }
                    .padding(.vertical, 14)
                    .padding(.horizontal, 40)
                    .background(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.purple, Color.blue]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .foregroundColor(.white)
                    .cornerRadius(25)
                    .shadow(radius: 5)
                }
                
                Spacer()
            }
            .navigationTitle(podcast.title)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
