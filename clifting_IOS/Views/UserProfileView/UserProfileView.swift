
//
//  UserProfileView.swift
//  clifting_IOS
//
//  Created by tecH on 16/03/25.
//

import SwiftUI

struct UserProfileView: View {
    @Environment(\.presentationMode) var presentationMode
    let selectedImage: UIImage
    
    var body: some View {
        NavigationStack {
            VStack {
                Image(uiImage: selectedImage)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width , height: UIScreen.main.bounds.height)
                    .cornerRadius(10)
            }
        }.ignoresSafeArea()
    }
}
