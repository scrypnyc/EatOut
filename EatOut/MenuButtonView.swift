//
//  MenuButtonView.swift
//  EatOut
//
//  Created by Alexander Skrypnyk on 10.11.2019.
//  Copyright © 2019 Alexander Skrypnyk. All rights reserved.
//

import SwiftUI

struct MenuButtonView: View {
    var body: some View {
        HStack {
            Button(action: {
                print("Menu Button")
            }, label: {
                Image(systemName: "line.horizontal.3.decrease.circle.fill")
                    .font(.system(size: 38))
                    .foregroundColor(Color.gray)
                .shadow(radius: 10)
            })
            Spacer()
        }.padding()
    }
}

struct MenuButtonView_Previews: PreviewProvider {
    static var previews: some View {
        MenuButtonView()
            .background(Color.primary)
    }
}
