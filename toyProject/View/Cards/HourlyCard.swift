//
//  HourlyForecastCard.swift
//  toyProject
//
//  Created by Genaro Gonzalez on 21/02/24.
//

import SwiftUI

struct HourlyCard: View {
    
    let hour: String
    
    var body: some View {
        RoundedRectangle(
            cornerSize: CGSize(width: 10, height: 10) )
        .fill(Color.offWhite)
        .frame(width: 80, height: 100)
        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
        .shadow(color: Color.offWhite, radius: 10, x: -5, y: -5)
        .overlay(
            VStack {
                Text(hour).font(.footnote)
                Circle()
                    .fill(Color.offWhite)
                    .frame(width: 30, height: 30)
                    .overlay(Image(systemName: "sun.min.fill").resizable()
                        .foregroundColor(.orange)
                        .padding(2))
                    .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                    .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                Text("34°").fontWeight(.bold).padding(0.5)
                
            }
            
        ).padding(.horizontal, 3)
    }
}

#Preview {
    HourlyCard(hour: "12")
}


