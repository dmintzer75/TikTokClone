//
//  FeedViewModel.swift
//  TikTokClone
//
//  Created by WKS-MAC01 on 22/12/2023.
//

import Foundation
class FeedViewModel: ObservableObject {
    @Published var posts: [Post] = []

    let videoUrls = [
        URL(string: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4")!,
        URL(string: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4")!,
        URL(string: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4")!,
        URL(string: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4")!,
        URL(string: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4")!,
        URL(string: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4")!,
        URL(string: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4")!,
    ]

    init() {
        fetchPosts()
    }

    func fetchPosts() {
        posts = [.init(id: NSUUID().uuidString, videoUrl: videoUrls[0]),
                 .init(id: NSUUID().uuidString, videoUrl: videoUrls[1]),
                 .init(id: NSUUID().uuidString, videoUrl: videoUrls[2]),
                 .init(id: NSUUID().uuidString, videoUrl: videoUrls[3]),
                 .init(id: NSUUID().uuidString, videoUrl: videoUrls[4]),
                 .init(id: NSUUID().uuidString, videoUrl: videoUrls[5]),
                 .init(id: NSUUID().uuidString, videoUrl: videoUrls[6])]
    }
}
