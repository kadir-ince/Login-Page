//
//  LoginView.swift
//  Fitness Dashboard
//
//  Created by Kadir on 23.08.2020.
//

import SwiftUI

struct LoginView: View {
    @State var password = ""
    @State var isPresented = false
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading, spacing: 12) {
                    Text("Welcome Back 🏆")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Text("Kadir ")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .font(.title)
                    Button(action: {
                        // not me codes
                    }) {
                        Text("Not Me")
                            .foregroundColor(.blue)
                            .font(.system(size: 14, weight: .semibold))
                    }
                }
                Spacer()
                Image("profile")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(18)
                    .frame(width: 125, height: 125, alignment: .center)
            }
            .padding(.horizontal, 25)
            .padding(.vertical, 30)

            VStack(alignment: .leading, spacing: 15) {
                Text("Password")
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)).opacity(0.5))
                    .foregroundColor(Color.white.opacity(1))
                    .cornerRadius(5)
                    .shadow(color: Color.white.opacity(0.1), radius: 5, x: 0, y: 5)
                    .shadow(color: Color.white.opacity(0.08), radius: 5, x: 0, y: -5)

                Button(action: {}) {
                    Text("Forget Password?")
                        .font(.system(size: 14, weight: .bold))
                        .foregroundColor(.blue)
                }
                .padding(.top, 10)
            }
            .padding([.horizontal, .top], 25)

            Button(action: {
                isPresented.toggle()
            }) {
                    Text("Login")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .frame(width: screen.width - 50)
                        .background(
                            LinearGradient(gradient: Gradient(colors: [Color("blue"), Color("purple")]), startPoint: .topLeading, endPoint: .bottomTrailing))
                        .cornerRadius(8)
            }
            .padding([.horizontal, .top], 25)
            .fullScreenCover(isPresented: $isPresented) {
                // Dashboard View
            }
            Button(action: {}) {
                HStack(spacing: 35) {
                    Image(systemName: "faceid")
                        .font(.system(size: 26))
                        .foregroundColor(.blue)
                    Text("Login With Face ID")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.blue)
                    Spacer()
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 8).stroke(Color("blue"), lineWidth: 1))
            }
            .padding(.top, 35)
            .padding(.horizontal, 25)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView().preferredColorScheme(.dark)
    }
}
