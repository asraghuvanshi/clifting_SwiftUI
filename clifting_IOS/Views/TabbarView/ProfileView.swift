import SwiftUI

struct ProfileView: View {
    @State private var rotationAngle: Double = 0
    @Environment(\.presentationMode) var presentationMode  // To go back
    
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
                    NavigationLink(destination: UserProfileView()) {
                        Image(.bgImageS)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 35, height: 35)
                            .clipShape(Circle())
                    }
                }
                .padding(10)
                
                VStack {
                    Image(.bgImageS)
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
                }
                Spacer()
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}
