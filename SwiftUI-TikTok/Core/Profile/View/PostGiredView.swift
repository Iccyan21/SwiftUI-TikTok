//
//  PostGiredView.swift
//  SwiftUI-TikTok
//
//  Created by 水原　樹 on 2024/01/07.
//

import SwiftUI

// 動画
struct PostGiredView: View {
    private let items = [
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1)
    ]
    
    private let width = (UIScreen.main.bounds.width / 3) - 2
    
    var body: some View {
        LazyVGrid(columns:items,spacing: 2){
            ForEach(0 ..< 25){ post in
                Rectangle()
                    .frame(width: width,height: 160)
                    .clipped()
            }
        }
    }
}

#Preview {
    PostGiredView()
}
