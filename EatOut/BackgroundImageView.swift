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
              Image("burger1")
            .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            
            Rectangle()
                .opacity(0.3)
                .edgesIgnoringSafeArea(.all)
        }
    }
}

struct BackgroundImageView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundImageView()
    }
}
