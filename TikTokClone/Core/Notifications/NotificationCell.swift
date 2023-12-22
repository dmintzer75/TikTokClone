//
//  NotificationCell.swift
//  TikTokClone
//
//  Created by WKS-MAC01 on 22/12/2023.
//

import SwiftUI

struct NotificationCell: View {
    var body: some View {
        HStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundStyle(.gray)

            Text("max.ver")
                .font(.footnote)
                .fontWeight(.semibold) +

                Text(" started following you, and liked you.")
                .font(.footnote) +

                Text("1w")
                .font(.caption)
                .foregroundStyle(.gray)
            Spacer()

            Rectangle()
                .frame(width: 48, height: 48)
                .foregroundStyle(.gray)
                .clipShape(RoundedRectangle(cornerRadius: 6))
        }
        .padding(.horizontal)
    }
}

#Preview {
    NotificationCell()
}
