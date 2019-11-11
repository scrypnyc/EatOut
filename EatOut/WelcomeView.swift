//
//  ContentView.swift
//  EatOut
//
//  Created by Alexander Skrypnyk on 10.11.2019.
//  Copyright © 2019 Alexander Skrypnyk. All rights reserved.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
            BackgroundImageView()
                VStack {
                    MenuButtonView()
                    Spacer()
                    WelcomeTextView()
                    Spacer()
                    NavigationLink(destination: Text("Coming Soon.")) {
                        SignInOrCreateButtonView()
                    }
                    Spacer()
                }
                .frame(width: UIScreen.main.bounds.width)
                .edgesIgnoringSafeArea(.bottom)
            }
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
