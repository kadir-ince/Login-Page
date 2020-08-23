//
//  LoginMain.swift
//  Fitness Dashboard
//
//  Created by Kadir on 23.08.2020.
//

import SwiftUI

struct LoginMain: View {
//    for login - sign up page
    @State var index = 0
    @Namespace var name

    var body: some View {
        VStack {
            Image(systemName: "circle.grid.hex.fill")
                .font(.system(size: 70))
                .foregroundColor(.white)

            // login
            HStack(spacing: 0) {
                Button(action: {
                    withAnimation(Animation.spring()) {
                        index = 0
                    }
                }) {
                    VStack {
                        Text("Login")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(index == 0 ? .white : .gray)

                        ZStack {
                            Capsule()
                                .fill(Color.white.opacity(0.04))
                                .frame(height: 4)
                            if index == 0 {
                                Capsule()
                                    .fill(Color("blue"))
                                    .frame(height: 4)
                                    .matchedGeometryEffect(id: "Tap", in: name)
                            }
                        }
                    }
                }
                Button(action: {
                    withAnimation(Animation.spring()) {
                        index = 1
                    }
                }) {
                    VStack {
                        Text("Sign Up")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(index == 1 ? .white : .gray)

                        ZStack {
                            Capsule()
                                .fill(Color.white.opacity(0.04))
                                .frame(height: 4)
                            if index == 1 {
                                Capsule()
                                    .fill(Color("blue"))
                                    .frame(height: 4)
                                    .matchedGeometryEffect(id: "Tap", in: name)
                            }
                        }
                    }
                }
            }
            .padding(.top, 30)
            if index == 0 {
                LoginView()
            } else {
                // sign up view
            }
        }
    }
}

struct LoginMain_Previews: PreviewProvider {
    static var previews: some View {
        LoginMain().preferredColorScheme(.dark)
    }
}
