//
//  SwiftUIView.swift
//  toyProject
//
//  Created by Genaro Gonzalez on 21/02/24.
//

import SwiftUI

struct MainWeatherCard: View {
    var body: some View {
        RoundedRectangle(cornerSize: CGSize(width: 10, height: 10) )
            .fill(Color.offWhite)
            .frame(width: .infinity, height: 192)
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
            .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
            .overlay(
                VStack{
                    HStack {
                        VStack(alignment: .center){
                            Text("Tijuana").font(.system(size: 34))
                            Circle()
                                .fill(Color.offWhite)
                                .frame(width: 100, height: 100)
                                .overlay(Image(systemName: "sun.min.fill").resizable()
                                    .foregroundColor(.orange)
                                    .padding(14))
                                .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                                .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                        }
                        Spacer()
                        VStack {
                            Text("14°")
                                .font(.system(size: 98))
                            
                            Text("Sunny day").fontWeight(.light)
                        }.padding()
                        
                    }
                    .padding()
                }
            ).padding()

    }
}


#Preview {
    MainWeatherCard()
}
