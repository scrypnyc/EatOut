//
//  LoginTextFieldView.swift
//  EatOut
//
//  Created by Alexander Skrypnyk on 29.11.2019.
//  Copyright © 2019 Alexander Skrypnyk. All rights reserved.
//

import SwiftUI

struct LoginTextFieldView: View {
    
    @Binding var email: String 
    
    var body: some View {
        TextField("Enter your email", text: $email)
            .keyboardType(.emailAddress)
            .padding()
            .background(Color(#colorLiteral(red: 0.9090411782, green: 0.8918820118, blue: 0.9128513083, alpha: 1)))
            .cornerRadius(18)
            .padding()
    }
}

//struct LoginTextFieldView_Previews: PreviewProvider {
//    static var previews: some View {
//        LoginTextFieldView()
//    }
//}
