//
//  SignUp.swift
//  Fitness Dashboard
//
//  Created by Kadir on 23.08.2020.
//

import SwiftUI

struct SignUp: View {
    @State var username = ""
    @State var password = ""
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading, spacing: 12) {
                    HStack {
                        Text("Create Account")
                            .font(.title)
                            .bold()
                        Spacer()
                        Image(systemName: "person.circle")
                            .font(.system(size: 75))
                            .foregroundColor(.white)
                    }
                }
                Spacer(minLength: 0)
            }
            .padding(.horizontal, 25)
            .padding(.top, 30)
            VStack(alignment: .leading, spacing: 15) {
                Text("Username")
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                TextField("Username", text: $username)
                    .padding()
                    .background(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)).opacity(0.5))
                    .foregroundColor(Color.white.opacity(1))
                    .cornerRadius(5)
                    .shadow(color: Color.white.opacity(0.1), radius: 5, x: 0, y: 5)
                    .shadow(color: Color.white.opacity(0.08), radius: 5, x: 0, y: -5)
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
            }
            .padding([.horizontal, .top], 25)

            Button(action: {}) {
                Text("Sign Up")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.white)
                    .padding(.vertical)
                    .frame(width: screen.width - 50)
                    .background(
                        LinearGradient(gradient: Gradient(colors: [Color("blue"), Color("purple")]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    .cornerRadius(8)
            }
            .padding([.horizontal, .top], 25)

            HStack {
                VStack {
                    Divider()
                        .background(Color(.white))
                }
                Text("OR")
                    .padding(.horizontal)
                VStack {
                    Divider()
                        .background(Color(.white))
                }
            }
            .padding(.horizontal, 30)
            .padding(.vertical)
            HStack(spacing: 45) {
                Image("google")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 35)

                Image("facebook")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 35)

                Image("mail")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 35)
            }
        }
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp().preferredColorScheme(.dark)
    }
}
