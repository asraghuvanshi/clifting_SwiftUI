//
//  ProfileView.swift
//  clifting_IOS
//
//  Created by tecH on 15/03/25.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            HStack {
                Image(.backIc)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 35, height: 35)
                Spacer()
                Text("AS Raghuvanshi")
                    .font(.system(size: 16, weight: .bold, design: .default))
                Spacer()
                Image(.bgImageSs)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 35, height: 35)
                    .clipShape(.circle)
            }.padding(20)
            Spacer()
        }.navigationBarBackButtonHidden()
    }
}
