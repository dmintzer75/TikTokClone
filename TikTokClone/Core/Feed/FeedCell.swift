//
//  FeedCell.swift
//  TikTokClone
//
//  Created by WKS-MAC01 on 22/12/2023.
//

import SwiftUI

struct FeedCell: View {
    let post: Int
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.green)
                .containerRelativeFrame([.horizontal, .vertical])
                .overlay {
                    Text("Post \(post)")
                        .foregroundStyle(.white)
                }

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
    }
}

#Preview {
    FeedCell(post: 2)
}
