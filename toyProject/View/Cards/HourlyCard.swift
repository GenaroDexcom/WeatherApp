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
            cornerSize: CGSize(width: 20, height: 20) )
        .fill(Color.offWhite)
        .frame(width: 80, height: 100)
        .shadow(color: Color.black.opacity(0.2), radius: 8, x: 10, y: 10)
        .shadow(color: Color.offWhite, radius: 8, x: -5, y: -5)
//        .blur(radius: 0.5)
        .overlay(
            VStack {
                Text(hour).font(.footnote).padding(EdgeInsets(top: 8, leading: 0, bottom: 0, trailing: 0))
                NeuIcon(icon: "sun.min", foreColor: .daOrange, backColor: .offWhite, size: 40, expansion: 4, action: {})
                Text("34°").fontWeight(.bold).padding(EdgeInsets(top: 0, leading: 0, bottom: 8, trailing: 0))
                
            }
            
        ).padding(.horizontal, 3)
    }
}

#Preview {
    HourlyCard(hour: "4 pm")
}


