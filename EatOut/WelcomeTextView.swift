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
        VStack{
             Text("NEW BURGERS")
                 .font(.title)
                 .fontWeight(.heavy)
                 .foregroundColor(Color.orange)
                 .multilineTextAlignment(.center)
             
             Text("They're better than your Dad's.\n He just won't admit it.")
                 .font(.headline)
             .foregroundColor(Color.gray)
             .multilineTextAlignment(.center)
         }
    }
}

struct WelcomeTextView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeTextView()
            .background(Color.primary)
    }
}
