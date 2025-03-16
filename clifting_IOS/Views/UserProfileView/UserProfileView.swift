//
//  UserProfileView.swift
//  clifting_IOS
//
//  Created by tecH on 16/03/25.
//

import SwiftUI


struct UserProfileView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        NavigationStack {
            ZStack(alignment: .topLeading) {
                Image(.bgImageSs)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.black.opacity(0.9))
                
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "arrow.left.circle.fill")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.white)
                        .padding()
                })
            }
        }.navigationBarBackButtonHidden()
    }
}
