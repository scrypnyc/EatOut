//
//  WelcomeTextView.swift
//  EatOut
//
//  Created by Alexander Skrypnyk on 10.11.2019.
//  Copyright © 2019 Alexander Skrypnyk. All rights reserved.
//

import SwiftUI

struct WelcomeTextView: View {
    var body: some View {
        VStack {
             Text("THE BURGER")
//                .font(.title)
                .font(.system(size: 28))
                 .fontWeight(.heavy)
                 .foregroundColor(Color.orange)
                 .multilineTextAlignment(.center)
             
             Text("They're better than your Dad's.\n He just won't admit it.")
                 .font(.system(size: 16))
             .foregroundColor(Color.white)
             .multilineTextAlignment(.center)
        }.padding()
    }
}


struct WelcomeTextView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeTextView()
            .background(Color.primary)
    }
}
