//
//  LoginPage.swift
//  Fitness Dashboard
//
//  Created by Kadir on 22.08.2020.
//

import SwiftUI

struct LoginPage: View {
    var body: some View {
        VStack{
            if screen.height < 750 {
                ScrollView(.vertical, showsIndicators: false){
                    LoginMain()
                }
            } else {
                LoginMain()
            }
        }
        .background(Color.black)
        .ignoresSafeArea(.all)
        .preferredColorScheme(.dark)
        .padding([.top, .bottom])
        
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}


let screen = UIScreen.main.bounds
