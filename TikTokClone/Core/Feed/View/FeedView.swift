//
//  FeedView.swift
//  TikTokClone
//
//  Created by WKS-MAC01 on 22/12/2023.
//

import AVKit
import SwiftUI
struct FeedView: View {
    @StateObject var viewModel = FeedViewModel()
    @State private var scrollPosition: String?
    @State private var player = AVPlayer()

    var body: some View {
        ScrollView {
            LazyVStack(spacing: 0) {
                ForEach(viewModel.posts) { post in
                    FeedCell(post: post, player: player)
                        .id(post.id)
                        .onAppear {
                            playInitialVideoIfNecessary()
                        }
                }
            }
            .scrollTargetLayout()
        }
        .onAppear {
            player.play()
        }
        .scrollPosition(id: $scrollPosition)
        .scrollTargetBehavior(.paging)
        .ignoresSafeArea()
        .onChange(of: scrollPosition) { _, newValue in
            playVideoOnChangeOfScrollPosition(postId: newValue)
        }
    }

    func playInitialVideoIfNecessary() {
        guard scrollPosition == nil, let post = viewModel.posts.first, player.currentItem == nil else { return }
        let item = AVPlayerItem(url: post.videoUrl)
        player.replaceCurrentItem(with: item)
    }

    func playVideoOnChangeOfScrollPosition(postId: String?) {
        guard let currentPost = viewModel.posts.first(where: { $0.id == postId }) else { return }
        player.replaceCurrentItem(with: nil)
        let playerItem = AVPlayerItem(url: currentPost.videoUrl)
        player.replaceCurrentItem(with: playerItem)
    }
}

#Preview {
    FeedView()
}
