//
//  ProfileHeaderView.swift
//  TikTokClone
//
//  Created by WKS-MAC01 on 22/12/2023.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(spacing: 24) {
            VStack(spacing: 8) {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundStyle(Color(.systemGray5))
                Text("@lewishamilton")
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }

            // Stats View
            HStack(spacing: 16) {
                UserStatView(value: 12, title: "Following")

                UserStatView(value: 122, title: "Followers")

                UserStatView(value: 1242, title: "Likes")
            }

            // action button

            Button {} label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 40)
                    .foregroundStyle(.black)
                    .background(Color(.systemGray5))
                    .clipShape(RoundedRectangle(cornerRadius: 6))
            }
            Divider()
        }
    }
}

#Preview {
    ProfileHeaderView()
}
