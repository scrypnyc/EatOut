//
//  ContentView.swift
//  EatOut
//
//  Created by Alexander Skrypnyk on 10.11.2019.
//  Copyright © 2019 Alexander Skrypnyk. All rights reserved.
//

import SwiftUI
import Foundation
import UIKit


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
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.6) {
                                self.isMenuViewOnScreen.toggle()
                            }
                    }
//                    Spacer()
                    WelcomeTextView()
                    Spacer()
                    
                    NavigationLink(destination: Text("Coming Soon.")) {
                        
                        SignInOrCreateButtonView()
                        }
                        .offset(y: isSignUpViewOnScreen ? 0 : 400)
                        .animation(.spring(dampingFraction: 0.8))
                        .onAppear {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.6) {
                                self.isSignUpViewOnScreen.toggle()
                        }
                    }
                    
                    WelcomeBottomView()
                        .offset(y: isBottomViewOnScreen ? 0 : 400)
                        .animation(.spring(dampingFraction: 0.8))
//                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.6) {
                        .onAppear {
                                self.isBottomViewOnScreen.toggle()
                        
                    }
                }
                .frame(width: UIScreen.main.bounds.width)
                .edgesIgnoringSafeArea(.bottom)
            }
            .navigationBarTitle("", displayMode: .automatic)
            .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
