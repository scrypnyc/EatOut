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
                        .fontWeight(.heavy)
                    
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
                        .frame(width: 95, height: 46)
                        .shadow(color: Color(.gray).opacity(0.6), radius: 4, x: 0, y: 0)
                    
                    Text("Start")
                        .font(.system(size: 17))
                        .foregroundColor(.white)
                        .fontWeight(.semibold)

                    }
                }
            }.padding()
            
            WelcomeBottomButtonView()
        }
        .edgesIgnoringSafeArea(.bottom)
        .frame(width: UIScreen.main.bounds.width, height: 155)
        .background(Color.white)
        .cornerRadius(16)
    }
}

struct WelcomeBottomView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeBottomView()
    }
}
