//
//  WelcomeBottomView.swift
//  EatOut
//
//  Created by Alexander Skrypnyk on 11.11.2019.
//  Copyright © 2019 Alexander Skrypnyk. All rights reserved.
//

import SwiftUI

struct WelcomeBottomView: View {
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Text("Choose a Burger")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("Start by choosing a location")
                        .foregroundColor(.secondary)
                }
                Spacer()
                
                Button(action: {
                    print("Start")
                }) {
                ZStack {
                    Capsule()
                        .foregroundColor(.orange)
                        .frame(width: 90, height: 46)
                    
                    Text("Start")
                        .font(.system(size: 20))
                        .foregroundColor(.black)
                        .fontWeight(.semibold)
                    }
                }
            }.padding()
            
            WelcomeBottomButtonView()
        }
        .edgesIgnoringSafeArea(.bottom)
        .frame(width: UIScreen.main.bounds.width, height: 160)
        .background(Color.white)
        .cornerRadius(14)
    }
}

struct WelcomeBottomView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeBottomView()
    }
}
