//
//  WelcomeBottomButtonView.swift
//  EatOut
//
//  Created by Alexander Skrypnyk on 11.11.2019.
//  Copyright © 2019 Alexander Skrypnyk. All rights reserved.
//

import SwiftUI

struct WelcomeBottomButtonView: View {
    let buttons = [ButtonWithImage(image: "arrow.counterclockwise.circle", label: "History"),
                   ButtonWithImage(image: "dollarsign.circle", label: "Menu")]
    
    var body: some View {
        GeometryReader { geo in
            HStack {
                ForEach(self.buttons, id: \.self) { button  in
                    Button(action: {
                        print(button.label)
                    }) {
                        Image(systemName: button.image)
                            .font(.title)
                            .foregroundColor(.black)
                        
                        Text(button.label)
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                    }
                    .frame(width: geo.size.width / 2.3, height: 50)
                    .background(Color.white)
                    .cornerRadius(16)
                    .shadow(color: Color(.black).opacity(0.4), radius: 4, x: 0, y: 0)
                    .padding(.horizontal)
                    
                }
            }
        }
//        .frame(height: 60)
        .padding()
    }
}

struct WelcomeBottomButtonView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeBottomButtonView()
    }
}

struct ButtonWithImage: Hashable {
    let image: String
    let label: String
    
    
}
