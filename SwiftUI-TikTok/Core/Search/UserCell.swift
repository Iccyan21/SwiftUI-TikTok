//
//  UserCell.swift
//  SwiftUI-TikTok
//
//  Created by 水原　樹 on 2024/01/07.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack(spacing: 12){
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 48,height: 48)
                .foregroundStyle(Color(.systemGray5))
            
            VStack(alignment: .leading){
                Text("test_user")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                Text("Test Name")
                    .font(.footnote)
            }
            Spacer()
        }
        .padding(.horizontal)
    }
}

#Preview {
    UserCell()
}
