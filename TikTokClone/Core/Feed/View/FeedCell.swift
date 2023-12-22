//
//  FeedCell.swift
//  TikTokClone
//
//  Created by WKS-MAC01 on 22/12/2023.
//

import AVKit
import SwiftUI
struct FeedCell: View {
    let post: Post
    var player: AVPlayer

    init(post: Post, player: AVPlayer) {
        self.post = post
        self.player = player
    }

    var body: some View {
        ZStack {
            CustomVideoPlayer(player: player)
                .containerRelativeFrame([.horizontal, .vertical])

            VStack {
                Spacer()
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading) {
                        Text("carlos.sainz")
                            .fontWeight(.semibold)

                        Text("rocket ship prepare for takeoff!!")
                    }
                    .foregroundStyle(.white)
                    .font(.subheadline)

                    Spacer()

                    VStack(spacing: 28) {
                        Circle()
                            .frame(width: 48, height: 48)
                            .foregroundStyle(.gray)

                        Button {}
                            label: {
                                VStack(spacing: 8) {
                                    Image(systemName: "heart.fill")
                                        .resizable()
                                        .frame(width: 28, height: 28)
                                    Text("1.2k")
                                        .font(.caption)
                                        .fontWeight(.bold)
                                }
                            }
                        Button {}
                            label: {
                                VStack(spacing: 8) {
                                    Image(systemName: "ellipsis.bubble.fill")
                                        .resizable()
                                        .frame(width: 28, height: 28)
                                    Text("120")
                                        .font(.caption)
                                        .fontWeight(.bold)
                                }
                            }
                        Button {}
                            label: { Image(systemName: "bookmark.fill")
                                .resizable()
                                .frame(width: 22, height: 28)
                            }
                        Button {}
                            label: { Image(systemName: "arrowshape.turn.up.right.fill")
                                .resizable()
                                .frame(width: 28, height: 28)
                            }
                    }
                    .foregroundStyle(.white)
                }
                .padding(.bottom, 80)
            }
            .padding()
        }
        .onTapGesture {
            switch player.timeControlStatus {
                case .playing:
                    player.pause()
                case .paused:
                    player.play()
                case .waitingToPlayAtSpecifiedRate:
                    break

                @unknown default:
                    break
            }
        }
    }
}

#Preview {
    FeedCell(post: Post(id: "1", videoUrl: URL(string: "https://www.tiktok.com/@scout2015/video/6897390845427347973?lang=en&is_copy_url=1&is_from_webapp=v1")!),
             player: AVPlayer())
}
