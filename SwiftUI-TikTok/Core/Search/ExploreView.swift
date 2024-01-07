//
//  ExploreView.swift
//  SwiftUI-TikTok
//
//  Created by 水原　樹 on 2024/01/07.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack{
            ScrollView {
                LazyVStack(spacing: 16){
                    ForEach(0 ..< 20){ user in
                        UserCell()
                    }
                }
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.top)
        }
    }
}

#Preview {
    ExploreView()
}
