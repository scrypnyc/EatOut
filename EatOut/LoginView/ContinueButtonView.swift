//
//  ContinueButtonView.swift
//  EatOut
//
//  Created by Alexander Skrypnyk on 03.12.2019.
//  Copyright © 2019 Alexander Skrypnyk. All rights reserved.
//

import SwiftUI

struct ContinueButtonView: View {
    
    @Binding var steps: Int
    
    var body: some View {
        Button(action: {
            self.steps += 1
        }) {
            Text("Continue")
                .fontWeight(.heavy)
                .foregroundColor(.white)
        }
        .padding()
        .frame(width: UIScreen.main.bounds.width - 24, height: 60)
        .background(Color.orange)
        .cornerRadius(30)
    }
}

//struct ContinueButtonView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContinueButtonView()
//    }
//}
