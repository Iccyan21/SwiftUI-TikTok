//
//  FeedCall.swift
//  SwiftUI-TikTok
//
//  Created by 水原　樹 on 2024/01/05.
//

import SwiftUI
import AVKit

struct FeedCall: View {
    let post: Post
    let player: AVPlayer
    
    init(post: Post, player: AVPlayer) {
        self.post = post
        self.player = player
    }
    
    var body: some View {
        ZStack{
            CustomVideoPlayer(player: player)
                .containerRelativeFrame([.horizontal,.vertical])
            
            VStack{
                Spacer()
                
                HStack(alignment: .bottom){
                    VStack(alignment: .leading){
                        Text("carlos.sainz")
                            .fontWeight(.semibold)
                        
                        Text("Rocket ship prepare for takeoff!!!")
                    }
                    .foregroundColor(.white)
                    .font(.subheadline)
                    
                    Spacer()
                    // スペースを開ける
                    VStack(spacing: 28){
                        
                        Circle()
                            .frame(width: 48,height: 48)
                            .foregroundColor(.gray)
                        Button{
                            
                        } label: {
                            VStack{
                                Image(systemName: "heart.fill")
                                    .resizable()
                                    .frame(width: 28,height: 28)
                                    .foregroundColor(.white)
                                Text("27")
                                    .font(.footnote)
                                    .foregroundStyle(.white)
                                    .bold()
                                
                            }
                            
                        }
                        Button{
                            
                        } label: {
                            VStack{
                                Image(systemName: "ellipsis.bubble.fill")
                                    .resizable()
                                    .frame(width: 28,height: 28)
                                    .foregroundColor(.white)
                                Text("27")
                                    .font(.footnote)
                                    .foregroundStyle(.white)
                                    .bold()
                                
                            }
                            
                        }
                        
                        Button{
                            
                        } label: {
                            Image(systemName: "bookmark.fill")
                                .resizable()
                                .frame(width: 22,height: 28)
                                .foregroundColor(.white)
                        }
                        Button{
                            
                        } label: {
                            Image(systemName: "arrowshape.turn.up.right.fill")
                                .resizable()
                                .frame(width: 28,height: 28)
                                .foregroundColor(.white)
                        }
                    }
                }
                .padding(.bottom,80)
            }
            .padding()
        }
        .onTapGesture {
            switch player.timeControlStatus {
            case .paused:
                player.play()
            case .waitingToPlayAtSpecifiedRate:
                break
            case .playing:
                player.pause()
            @unknown default:
                break
            }
        }
    }
}

#Preview {
    FeedCall(post: Post(id: NSUUID().uuidString, videoUrl: ""),player: AVPlayer())
}
