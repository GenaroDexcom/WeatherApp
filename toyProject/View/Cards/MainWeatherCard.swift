//
//  SwiftUIView.swift
//  toyProject
//
//  Created by Genaro Gonzalez on 21/02/24.
//

import SwiftUI

struct MainWeatherCard: View {
    var weather: ResponseBody
    var body: some View {
        RoundedRectangle(cornerSize: CGSize(width: 20, height: 20) )
            .fill(Color.offWhite)
            .frame(width: .infinity, height: 192)
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 10, y: 10)
            .shadow(color: Color.white.opacity(0.7), radius: 20, x: -5, y: -5)
            .overlay(
                VStack{
                    HStack {
                        VStack(alignment: .center){
                            Text(weather.name).font(.system(size: 34))
                            NeuIcon(icon: "sun.min.fill", foreColor: .daOrange, backColor: .offWhite, size: 96, expansion: 8, action: {})
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
    MainWeatherCard(weather: previewWeather)
}
