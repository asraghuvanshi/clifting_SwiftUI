import SwiftUI

struct ProfileView: View {
    @State private var rotationAngle: Double = 0
    @State private var selectedImage: UIImage?
    @State private var isShowingDetail = false
    @State private var value = 0

    @Environment(\.presentationMode) var presentationMode
    var userPostImage:[UIImage] = [.bgImageF , .bgImageFf, .bgImageFi, .bgImageS, .bgImageSi, .splashBg, .bgImageT]
    let columns = [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible()), GridItem(.flexible())]
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Image(systemName: "arrow.left.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.black)
                        .frame(width: 30, height: 30)
                        .onTapGesture {
                            presentationMode.wrappedValue.dismiss()
                        }
                    
                    Spacer()
                    
                    Text("iOS Developer")
                        .font(.system(size: 16, weight: .bold))
                    
                    Spacer()
                    NavigationLink(destination: UserProfileView(selectedImage: userPostImage.first!)) {
                        Image(.bgImageS)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 35, height: 35)
                            .clipShape(Circle())
                    }
                }
                .padding(10)
                
                VStack {
                    Image(.bgImageFi)
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
                    
                    Text("Tiny life on Earth Just Another Average Programmer")
                        .frame(width: 200)
                        .foregroundStyle(.gray)
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .lineLimit(2)
                    
                    HStack(alignment: .center, spacing: 20) {
                        VStack{
                            Text("Posts")
                            Text("200")
                        }
                        VStack{
                            Text("Follower")
                            Text("200")
                        }
                        VStack{
                            Text("Following")
                            Text("200k")
                        }
                    }
                    .foregroundStyle(.gray)
                    
                    Text("Posts")
                    ScrollView {
                        LazyVGrid(columns: columns, spacing: 20) {
                            ForEach(userPostImage.indices, id: \.self) { index in
                                Image(uiImage: userPostImage[index])
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 80, height: 100)
                                    .cornerRadius(10)
                                    .clipped()
                                    .onTapGesture {
                                        selectedImage = userPostImage[index]
                                        isShowingDetail = true
                                    }
                            }
                        }
                        .padding(.horizontal, 20)
                    }
                    .navigationDestination(isPresented: $isShowingDetail) {
                        if let selectedImage = selectedImage {
                            UserProfileView(selectedImage: selectedImage)
                        }
                    }
                }
                Spacer()
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}
