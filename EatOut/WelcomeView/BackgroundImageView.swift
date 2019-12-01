//
//  BackgroundImageView.swift
//  EatOut
//
//  Created by Alexander Skrypnyk on 10.11.2019.
//  Copyright © 2019 Alexander Skrypnyk. All rights reserved.
//

import SwiftUI

struct BackgroundImageView: View {
    var body: some View {
        ZStack {
              Image("burger7")
                .resizable()
//                .resizable(capInsets: .init(top: 71, leading: 125, bottom: 100, trailing: 140))
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.top)
                .offset(x: -10)
            
            Rectangle()
                .opacity(0.5)
                .edgesIgnoringSafeArea(.all)
//            LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
//                .opacity(0.1)
//                .edgesIgnoringSafeArea(.all)
        }
    }
}

struct BackgroundImageView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundImageView()
    }
}
