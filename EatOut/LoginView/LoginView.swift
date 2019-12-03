//
//  LoginView.swift
//  EatOut
//
//  Created by Alexander Skrypnyk on 21.11.2019.
//  Copyright © 2019 Alexander Skrypnyk. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    @Environment(\.presentationMode) var presentationMode:
        Binding<PresentationMode>
    
    var backButton: some View {
        Button(action: {
            self.presentationMode.wrappedValue
                    .dismiss()
        }) {
            ZStack {
//                Circle()
//                    .offset(x: 2)
//                    .stroke(lineWidth: 1)
//                    .foregroundColor(.orange)
                
                Image(systemName: "chevron.left.circle")
//                    .padding()
//                    .font(.largeTitle)
                    .font(.system(size: 38))
                    .foregroundColor(.black)
            }
        }
    }
    
    @State private var email = ""
    @State private var steps = 0
    
    var body: some View {
        NavigationView {
            VStack {
                LoginTextView()
    
            if steps == 0 {
                LoginTextFieldView(email: $email)
            } else {
                EmptyView()
            }
                
                if email.isEmpty {
                    LoginButtonView()
                } else {
                    ContinueButtonView()
                }
                
            Spacer()
        }
    }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: backButton)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
