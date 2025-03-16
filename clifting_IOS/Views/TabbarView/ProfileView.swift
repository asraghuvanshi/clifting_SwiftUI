//
//  ProfileView.swift
//  clifting_IOS
//
//  Created by Amit Singh Raghuvanshi on 15/03/25.
//

import SwiftUI

struct ProfileView: View {
    @State private var rotationAngle: Double = 0

    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Image(systemName: "arrow.left.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.black)
                        .frame(width: 30, height: 30)
                    Spacer()
                    Text("AS Raghuvanshi")
                        .font(.system(size: 16, weight: .bold))
                    Spacer()
                    NavigationLink(destination: UserProfileView()) {
                        Image(.bgImageSs)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 35, height: 35)
                            .clipShape(Circle())
                    }
                }.padding(10)
           
                
                VStack {
                    Image(.bgImageSs)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .overlay(
                            Circle()
                                .stroke(
                                    AngularGradient(
                                        gradient: Gradient(colors: [Color.white, Color.gray, Color.gray]),
                                        center: .center
                                    ),
                                    lineWidth: 3
                                )
                                .rotationEffect(.degrees(rotationAngle))
                        )
                        .onAppear {
                            withAnimation(Animation.linear(duration: 5).repeatForever(autoreverses: false)) {
                                rotationAngle = 360
                            }
                        }
                }
                    Spacer()
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}
