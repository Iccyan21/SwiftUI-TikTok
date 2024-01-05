//
//  FeedView.swift
//  SwiftUI-TikTok
//
//  Created by 水原　樹 on 2024/01/05.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 0) {
                ForEach(0 ..< 10) { post in
                    FeedCall(post: post)
                }
            }
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.paging)
        // 上のセーフエリアをぬる
        .ignoresSafeArea()
    }
}

#Preview {
    FeedView()
}
