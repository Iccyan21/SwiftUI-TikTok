//
//  NotficationsView.swift
//  SwiftUI-TikTok
//
//  Created by 水原　樹 on 2024/01/07.
//

import SwiftUI

struct NotficationsView: View {
    var body: some View {
        NavigationStack{
            ScrollView {
                LazyVStack(spacing:24){
                    ForEach(0 ..< 10) { notfication in
                        NotficationCall()
                    }
                }
            }
            .navigationTitle("Notfications")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.top)
        }
    }
}

#Preview {
    NotficationsView()
}
