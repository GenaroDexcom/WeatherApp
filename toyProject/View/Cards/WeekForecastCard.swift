//
//  WeekForecastCard.swift
//  toyProject
//
//  Created by Genaro Gonzalez on 21/02/24.
//

import SwiftUI

struct WeekForecastCard: View {
    
    let day : String
    
    var body: some View {
        RoundedRectangle (cornerSize: CGSize(width: 16, height: 16) )
            .fill(Color.offWhite)
            .frame(width: .infinity, height: 50)
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
            .shadow(color: Color.offWhite, radius: 10, x: -5, y: -5)
            .overlay(
                VStack {
                    HStack(spacing: 24) {
                        Text(day).font(.subheadline)
                            .padding().frame(maxWidth: .infinity, alignment: .leading)

                        HStack() {
                            Image(systemName: "drop.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 14.0, height: 14.0)
                                .clipped()
                                .gridColumnAlignment(.trailing)
                                .foregroundColor(.daBlue)
                            
                            Text("7%").fontWeight(.light).font(.footnote)
                        }
                        HStack {
                            Image(systemName: "sun.min.fill")
                                .resizable().scaledToFit()
                                .frame(width: 30, height: 30).clipped()
                                .foregroundStyle(Color.orange)
                            
                            Image(systemName: "cloud.heavyrain.fill")
                                .resizable().scaledToFit()
                                .frame(width: 30, height: 30).clipped()
                                .foregroundStyle(Color.daBlue)
                        }
                        HStack {
                            Text("17°").fontWeight(.light).font(.footnote)
                            Text("7°").fontWeight(.light).font(.footnote)
                        }
                    }.padding()
                })
    }
}
#Preview {
    WeekForecastCard(day: "Wednesday")
}
