//
//  DetailCard.swift
//  toyProject
//
//  Created by Genaro Gonzalez on 05/03/24.
//

import SwiftUI

struct DetailCard: View {
//    let iconName: String?
    var iconView: NeuIcon?
    let factor: String
    let data: String
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        RoundedRectangle(cornerSize: CGSize(width: 30, height: 30) )
            .fill(Color.offWhite)
            .frame(width: width, height: height)
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 10, y: 10)
            .shadow(color: Color.white.opacity(0.7), radius: 20, x: -5, y: -5)
            .overlay(
                VStack{
                    HStack {
                        HStack(alignment: .top) {
                            iconView == nil ? AnyView(EmptyView()) : AnyView(iconView)
                            Text(factor).padding(EdgeInsets(top: 8, leading: 8, bottom: 0, trailing: 0))
                        }
                    }.padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
                    
                    data == "" ? AnyView(EmptyView()) : AnyView(Text(data).font(.largeTitle).fontWeight(.light))
                }
            )
    }
}

#Preview {
    DetailCard(iconView: NeuIcon(icon: "sun.max.fill", action: {}, foreColor: .daOrange, backColor: .offWhite, size: 40, expansion: 8) , factor: "Humidity", data: "87%", width: 176, height: 144)
}
