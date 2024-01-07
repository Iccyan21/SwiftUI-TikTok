//
//  NotficationCall.swift
//  SwiftUI-TikTok
//
//  Created by 水原　樹 on 2024/01/07.
//

import SwiftUI

struct NotficationCall: View {
    var body: some View {
        HStack{
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 32,height: 32)
                .foregroundStyle(Color(.systemGray5))
            
            HStack{
                Text("max.verstappen")
                    .font(.footnote)
                    .fontWeight(.semibold) +
                
                Text(" liked one of your posts woiefjawef opijawef ")
                    .font(.footnote) +
                
                Text("3d")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
            
            Spacer()
            
            Rectangle()
                .frame(width: 48,height: 48)
                .clipShape(RoundedRectangle(cornerRadius: 6))
        }
        .padding(.horizontal)
    }
}

#Preview {
    NotficationCall()
}
