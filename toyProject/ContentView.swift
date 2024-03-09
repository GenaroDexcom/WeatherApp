//
//  ContentView.swift
//  toyProject
//
//  Created by Genaro Gonzalez on 07/02/24.
//

import SwiftUI

let days: [String] = ["Monday", "Tuesday", "Wednesday"]
let hours: [String] = ["Now", "2 PM", "3 PM", "4 PM", "5 PM"]

struct ContentView: View {
    
    @State private var backCol: Color
    init(backCol: Color) {
        self.backCol = backCol
    }
    var body: some View {
        NavigationView {
            ZStack {
                Color.offWhite
                VStack(alignment: .leading, spacing: 8 ) {
                    Text("Weather UI App")
                        .font(.largeTitle)
                        .padding(.leading, 8)
                    Text("Alerts Data")
                        .font(.subheadline).padding(.leading, 16)
                    
                    MainWeatherCard()
                    
                    Divider()
                    
                    Text("Hourly Forecast")
                        .font(.title3)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, 16)
                    
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack(alignment: .center) {
                            ForEach(hours, id: \.self) { hour in
                                HourlyCard(hour: hour)
                            }
                        }.frame(height: UIScreen.main.bounds.size.height*0.18)
                    }.frame(width: .infinity).background(Color.offWhite)
                    Divider()
                    HStack {
                        Text("7 day Forecast")
                            .font(.title3)
                    }.padding(.leading, 16)
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVStack(alignment: .center) {
                            Divider().colorInvert()
                            ForEach(days, id: \.self) { day in
                                NavigationLink(destination: DayDetailView(backCol: Color.offWhite)) {
                                    WeekForecastCard(day: day)
                                        .padding(EdgeInsets(top: 0 , leading: 8, bottom: 0, trailing: 8))
                                }.foregroundColor(.black)
                            }
                        }
                    }
                }.padding(EdgeInsets(top: 8, leading: 0, bottom: 0, trailing: 0))
            }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
    
}

#Preview {
    ContentView(backCol: Color.offWhite)
}
