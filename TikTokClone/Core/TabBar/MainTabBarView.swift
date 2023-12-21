//
//  TabBarView.swift
//  TikTokClone
//
//  Created by WKS-MAC01 on 21/12/2023.
//

import SwiftUI

struct MainTabBarView: View {
    var body: some View {
        TabView {
            Text("Feed")
                .tabItem {
                    VStack {
                        Image(systemName: "house")
                        Text("Home")
                    }
                }
            Text("Friends")
                .tabItem {
                    VStack {
                        Image(systemName: "person.2")
                        Text("Friends")
                    }
                }
            Text("Upload Post")
                .tabItem {
                    Image(systemName: "plus")
                }
            Text("Friends")
                .tabItem {
                    VStack {
                        Image(systemName: "heart")
                        Text("Friends")
                    }
                }
        }
    }
}

#Preview {
    MainTabBarView()
}
