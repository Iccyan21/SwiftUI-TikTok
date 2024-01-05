//
//  MainTabView.swift
//  SwiftUI-TikTok
//
//  Created by 水原　樹 on 2024/01/05.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedTab = 0
    var body: some View {
        TabView (selection: $selectedTab){
            Text("Feed")
                .tabItem {
                    VStack {
                        // 選択された時に塗りつぶすようになる
                        Image(systemName: selectedTab == 0 ? "house.fill" : "house")
                            .environment(\.symbolVariants,selectedTab == 0 ? .fill : .none)
                        Text("Home")
                    }
                }
                .onAppear{ selectedTab = 0}
                .tag(0)
            Text("Friends")
                .tabItem {
                    VStack{
                        // 選択された時に塗りつぶすようになる
                        Image(systemName: selectedTab == 1 ? "person.2.fill" : "person.2")
                            .environment(\.symbolVariants,selectedTab == 1 ? .fill : .none)
                        Text("Friends")
                    }
                }
                .onAppear{ selectedTab = 1}
                .tag(1)
            Text("Upload Post")
                .tabItem { Image(systemName: "plus") }
                .onAppear{ selectedTab = 2}
                .tag(2)
            Text("Notfications")
                .tabItem {
                    VStack{
                        // 選択された時に塗りつぶすようになる
                        Image(systemName: selectedTab == 3 ? "heart.fill" : "heart")
                            .environment(\.symbolVariants,selectedTab == 3 ? .fill : .none)
                        Text("Friends")
                    }
                }
                .onAppear{ selectedTab = 3}
                .tag(3)
            Text("Profile")
                .tabItem {
                    VStack{
                        // 選択された時に塗りつぶすようになる
                        Image(systemName: selectedTab == 4 ? "person.fill" : "person")
                            .environment(\.symbolVariants,selectedTab == 4 ? .fill : .none)
                        Text("Friends")
                        
                    }
                }
                .onAppear{ selectedTab = 4}
                .tag(4)
        }
        // Tabの色を変更
        .tint(.black)
    }
}

#Preview {
    MainTabView()
}
