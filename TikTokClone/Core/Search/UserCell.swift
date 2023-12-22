//
//  UserCell.swift
//  TikTokClone
//
//  Created by WKS-MAC01 on 22/12/2023.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 48, height: 48)
                .foregroundStyle(.gray)
            VStack(alignment: .leading) {
                Text("carlos.sainz")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Text("Carlos Sainz")
                    .font(.footnote)
            }
            Spacer()
        }
    }
}

#Preview {
    UserCell()
}
