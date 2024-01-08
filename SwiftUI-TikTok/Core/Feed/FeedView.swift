//
//  FeedView.swift
//  SwiftUI-TikTok
//
//  Created by 水原　樹 on 2024/01/05.
//

import SwiftUI
import AVKit

struct FeedView: View {
    @StateObject var videoModel = FeedViewModel()
    @State private var scrollPosition: String?
    @State private var player = AVPlayer()
    
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 0) {
                ForEach(videoModel.posts) { post in
                    FeedCall(post: post,player: player)
                        .id(post.id)
                        .onAppear { playInitialVideoIfNecessary() }
                }
            }
            .scrollTargetLayout()
        }
        //ここで再生
        .onAppear{ player.play()}
        .scrollPosition(id: $scrollPosition)
        .scrollTargetBehavior(.paging)
        // 上のセーフエリアをぬる
        .ignoresSafeArea()
        // 投稿のID取得
        .onChange(of: scrollPosition){ oldValue, newValue in
            playVideoOnChangeOfScrollPosition(postId: newValue)
        }
    }
    
    func playInitialVideoIfNecessary() {
        guard
            scrollPosition == nil,
            let post = videoModel.posts.first,
            player.currentItem == nil else { return }
        
        let item = AVPlayerItem(url: URL(string: post.videoUrl)!)
        player.replaceCurrentItem(with: item)
    }
    
    func playVideoOnChangeOfScrollPosition(postId:String?){
        guard let currentPost = videoModel.posts.first(where: { $0.id == postId }) else { return }
        
        player.replaceCurrentItem(with: nil)
        let playerItem = AVPlayerItem(url: URL(string: currentPost.videoUrl)!)
        player.replaceCurrentItem(with: playerItem)
    }
}

#Preview {
    FeedView()
}
