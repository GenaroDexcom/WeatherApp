//
//  NeuCard.swift
//  toyProject
//
//  Created by Genaro Gonzalez on 05/03/24.
//

import SwiftUI

struct NeuIcon: View {
    
    let icon: String
    var action : (() -> Void) = {}
    let foreColor : Color
    let backColor : Color
    let size : CGFloat
    let expansion : CGFloat
    
    var body: some View {
//                    Circle()
//                        .fill(Color.offWhite)
//                        .frame(width: size, height: size)
//                        .overlay(Image(systemName: icon).resizable().onTapGesture {
//        
//                        }.foregroundColor(color)
//                            .padding(8))
//                        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
//                    .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
        Image(systemName: icon).resizable()
            .scaledToFill()
            .padding(expansion)
            .foregroundColor(foreColor)
            .background(backColor)
            .clipShape(Circle()).frame(width: size, height: size)
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
            .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
    }
    
}

#Preview {
    NeuIcon(icon: "sun.max.fill", foreColor: .daOrange, backColor: .offWhite, size: 64, expansion: 16)
}
