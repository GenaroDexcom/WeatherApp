//
//  WeekForecastCard.swift
//  toyProject
//
//  Created by Genaro Gonzalez on 21/02/24.
//

import SwiftUI

struct WeekForecastCard: View {
    var body: some View {
        ForEach(days, id: \.self) {
            day in RoundedRectangle (cornerSize: CGSize(width: 10, height: 10) )
                .fill(Color.offWhite)
                .frame(width: .infinity, height: 50)
                .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                .overlay(
                    VStack {
                        HStack {
                            Text(day.description)
                                .padding()
                            Spacer()
                            Image(systemName: "drop.fill").resizable().scaledToFit().frame(width: 14.0, height: 14.0).clipped()
                            
                            Text("7%").fontWeight(.light).font(.footnote)
                            Spacer()
                            Image(systemName: "sun.min.fill")
                                .resizable().scaledToFit()
                                .frame(width: 30, height: 30).clipped()
                                .foregroundStyle(Color.orange)
                            
                            Image(systemName: "cloud.heavyrain.fill")
                                .resizable().scaledToFit()
                                .frame(width: 30, height: 30).clipped()
                                .foregroundStyle(Color.blue)
                            Spacer()
                            Text("17°").fontWeight(.light).font(.footnote)
                            Text("7°").fontWeight(.light).font(.footnote)
                        }.padding()
                        
                    }
                    
                ).padding(3)
        }
    }
}

#Preview {
    WeekForecastCard()
}
