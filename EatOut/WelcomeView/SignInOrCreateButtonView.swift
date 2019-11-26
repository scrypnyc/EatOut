//
//  SignInOrCreateButtonView.swift
//  EatOut
//
//  Created by Alexander Skrypnyk on 11.11.2019.
//  Copyright © 2019 Alexander Skrypnyk. All rights reserved.
//

import SwiftUI

struct SignInOrCreateButtonView: View {
    var body: some View {
        HStack {
            Image(systemName: "sheqelsign.circle")
                .font(.largeTitle)
                .foregroundColor(Color.black)
            
            VStack(alignment: .leading) {
                Text("Let's get to eat with us!")
                    .foregroundColor(.black)
                    .fontWeight(.heavy)
                Text("Sign in or create an account.")
                    .foregroundColor(.secondary)
            }.padding(.horizontal)
            Spacer()
        }
        .padding()
        .background(Color.white)
        .cornerRadius(16)
        .padding(.horizontal, 8)
    }
}

struct SignInOrCreateButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SignInOrCreateButtonView()
    }
}
