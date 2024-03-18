//
//  DataCard.swift
//  toyProject
//
//  Created by Genaro Gonzalez on 29/02/24.
//

import SwiftUI

struct MainDataCard: View {
    var body: some View {
        RoundedRectangle(cornerSize: CGSize(width: 20, height: 20) )
            .fill(Color.offWhite)
            .frame(width: .infinity, height: 192)
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 10, y: 10)
            .shadow(color: Color.white.opacity(0.7), radius: 20, x: -5, y: -5)
            .overlay(
                VStack{
                    HStack {
                        VStack {
                            Text("Monday 04")
                            Text("20° C").font(.largeTitle).padding(.trailing, 16)
                        }
                        NeuIcon(icon: "cloud.drizzle", foreColor: .daBlue, backColor: .offWhite, size: 100, expansion: 16, action: {})
                        VStack(alignment: .leading) {
                            HStack {
                                Image(systemName: "humidity.fill").foregroundColor(.daBlue)
                                Text("2%")
                            }
                            HStack {
                                Image(systemName: "wind").foregroundColor(.daBlue)
                                Text("WNW20 KM/H").font(.caption)
                            }
                        }
                    }.padding()
                }
            ).padding()
    }
}

#Preview {
    MainDataCard()
}
