//
//  DayDetailView.swift
//  toyProject
//
//  Created by Genaro Gonzalez on 29/02/24.
//

import SwiftUI
struct DayDetailView: View {
    @State private var backCol: Color
    init(backCol: Color) {
        self.backCol = backCol
    }
    
    var body: some View {

        ZStack {
            Color.offWhite
            ScrollView {
                VStack {
                    MainDataCard()
                    Spacer()
                    Text("Showers early. Low 20 C. Winds WNW at 10 to 15 km/h. Chance of rain 30%.")
                        .padding().fixedSize(horizontal: false, vertical: true)
                    VStack {
                        HStack {
                            DetailCard(iconView: NeuIcon(icon: "drop.circle", action: {}, foreColor: .daOrange, backColor: .offWhite, size: 48, expansion: 8), factor: "Humidity", data: "88%", width: 176, height: 144)
                            Divider().colorInvert()
                            DetailCard(iconView: NeuIcon(icon: "sun.max.circle", action: {}, foreColor: .daOrange, backColor: .offWhite, size: 48, expansion: 8), factor: "UV Index", data: "0 (Low)", width: 176, height: 144)
                        }
                        Divider().colorInvert()
                        HStack {
                            DetailCard(iconView: NeuIcon(icon: "sunrise.circle", action: {}, foreColor: .daOrange, backColor: .offWhite, size: 48, expansion: 8), factor: "Sunrise", data: "3:44", width: 176, height: 144)
                            Divider().colorInvert()
                            DetailCard(iconView: NeuIcon(icon: "sunset.circle", action: {}, foreColor: .daOrange, backColor: .offWhite, size: 48, expansion: 8), factor: "Sunset", data: "13:41", width: 176, height: 144)
                        }
                        
                    }
                    DetailCard(iconView: NeuIcon(icon: "moonphase.waning.crescent.inverse", action: {}, foreColor: .daOrange, backColor: .offWhite, size: 48, expansion: 8), factor: "Waning Crescent", data: "", width: .infinity, height: 64).padding()
                }
            }.scrollIndicators(.hidden).padding(EdgeInsets(top: 80, leading: 0, bottom: 0, trailing: 0))
        }.edgesIgnoringSafeArea(.all)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    DayDetailView(backCol: Color.offWhite)
}
