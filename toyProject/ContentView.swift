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
        ZStack {
            Color.offWhite
            VStack(alignment: .leading, spacing: 8 ) {
                Text("Weather UI App")
                    .font(.largeTitle)
                    .padding(.trailing, 8)
                Text("Alerts Data")
                    .font(.subheadline)
                MainWeatherCard()
                
                Divider()
                
                Text("Hourly Forecast")
                    .font(.title3)
                    .multilineTextAlignment(.leading)
                
                
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
//                    Spacer()
                    
                }.padding(8)
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVStack(alignment: .center) {
                        ForEach(days, id: \.self) { day in
                            WeekForecastCard(day: day)
                        }
                    }
                }
            }.padding(EdgeInsets(top: 48, leading: 8, bottom: 8, trailing: 8))
        }
        .edgesIgnoringSafeArea(.all)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
}

#Preview {
    ContentView(backCol: Color.offWhite)
}
