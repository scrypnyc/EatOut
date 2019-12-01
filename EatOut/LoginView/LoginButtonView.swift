//
//  LoginButtonView.swift
//  EatOut
//
//  Created by Alexander Skrypnyk on 30.11.2019.
//  Copyright © 2019 Alexander Skrypnyk. All rights reserved.
//

import SwiftUI

struct LoginButtonView: View {
    
    let buttons = [ButtonsWithImage(image: "f.circle.fill", label: "Continue with Facebook"),                    ButtonsWithImage(image: "g.circle.fill", label: "Continue with Google")]
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Text("or")
                
                ForEach(self.buttons, id: \.self) { button in
                    Button(action: {
                        print(button.label)
                    }) {
                        Text(button.label)
                            .fontWeight(.heavy)
                            .foregroundColor(.black)
                        
                        Image(systemName: button.image)
                            .font(.headline)
                            .foregroundColor(.blue)
                    }
                }
            }
        }
    }
}

struct LoginButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LoginButtonView()
    }
}

struct ButtonsWithImage: Hashable {
    let image: String
    let label: String
}
