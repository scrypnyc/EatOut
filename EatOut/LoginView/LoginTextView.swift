//
//  LoginTextView.swift
//  EatOut
//
//  Created by Alexander Skrypnyk on 29.11.2019.
//  Copyright © 2019 Alexander Skrypnyk. All rights reserved.
//

import SwiftUI

struct LoginTextView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Get to THE BURGER!")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.bottom)
                
                Text("Sign in or create an account")
                    .foregroundColor(.gray)
            }
            Spacer()
        }
        .padding()
    }
}

struct LoginTextView_Previews: PreviewProvider {
    static var previews: some View {
        LoginTextView()
    }
}
