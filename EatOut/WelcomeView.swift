//
//  ContentView.swift
//  EatOut
//
//  Created by Alexander Skrypnyk on 10.11.2019.
//  Copyright © 2019 Alexander Skrypnyk. All rights reserved.
//

import SwiftUI

struct WelcomeView: View {
    
    @State private var isBottomViewOnScreen = false
    @State private var isSignUpViewOnScreen = false
    @State private var isMenuViewOnScreen = false
    
    var body: some View {
        NavigationView {
            ZStack {
            BackgroundImageView()
                
                VStack {
                    MenuButtonView()
                        .offset(y: isMenuViewOnScreen ? 0 : -400)
                        .animation(.spring(dampingFraction: 0.8))
                        .onAppear {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                                self.isMenuViewOnScreen.toggle()
                            }
                    }
                    Spacer()
                    WelcomeTextView()
                    Spacer()
                    NavigationLink(destination: Text("Coming Soon.")) {
                        SignInOrCreateButtonView()
                    }
                    
                    WelcomeBottomView()
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
