//
//  ProfileHeaderView.swift
//  SwiftUI-TikTok
//
//  Created by 水原　樹 on 2024/01/07.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(spacing: 16){
            VStack(spacing:8){
                //Profile Image
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 80,height: 80)
                    .foregroundStyle(Color(.systemGray5))
                // User Name
                
            }
            // status view
            HStack(spacing: 16){
                UserStatView(value: 5, title: "Following")
                UserStatView(value: 1, title: "Followers")
                UserStatView(value: 7, title: "Likes")
            }
            // 編集
            Button{
                
            } label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360,height: 32)
                    .foregroundStyle(.black)
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 6))
            }
            // 下線
            Divider()
        }
    }
}

#Preview {
    ProfileHeaderView()
}

