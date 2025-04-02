//
//  UserPostView.swift
//  clifting_IOS
//
//  Created by tecH on 02/04/25.
//

import SwiftUI

struct UserPostView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 0) {
                    HStack {
                        Image(.bgImageFi)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white, lineWidth: 2))
                            .shadow(radius: 5)
                        VStack(alignment: .leading, spacing: 10) {
                            Text("John Doe")
                                .font(.headline)
                            Text("What's on your mind?")
                                .font(.title3)
                        }
                        Spacer()
                    }.padding(20)
        
                    Divider()
                        .frame(minWidth: UIScreen.main.bounds.width * 0.9, maxHeight: 140)
                        .foregroundStyle(Color.black)
                }
            }
            .navigationTitle("Post Feed")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

