//
//  CurrentUserProfileView.swift
//  SwiftUI-TikTok
//
//  Created by 水原　樹 on 2024/01/07.
//

import SwiftUI

struct CurrentUserProfileView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(spacing:2){
                    //profile header
                    ProfileHeaderView()
                    
                    // post grid view
                    PostGiredView()
                    
                }
                .padding(.top)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    CurrentUserProfileView()
}
