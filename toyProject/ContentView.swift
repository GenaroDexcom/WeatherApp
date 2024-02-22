//
//  ContentView.swift
//  toyProject
//
//  Created by Genaro Gonzalez on 07/02/24.
//

import SwiftUI

extension Color {
    static let offWhite = Color(red: 225 / 255, green: 225 / 255, blue: 235 / 255)
}

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
            VStack {
                Spacer(minLength: 30)
                HStack {
                    
                    Text("Weather UI App")
                        .font(.largeTitle)
                        .padding(.trailing, 8)
                    Spacer()
                }
                HStack {
                    Text("Alerts Data")
                        .font(.subheadline)
                        .padding(.horizontal)
                    Spacer()
                }
                
//                Main Weather
                MainWeatherCard()
                

                Spacer(minLength: 4)
                
                Divider()
                
                Spacer(minLength: 10)
                
                VStack {
                    HStack {
                        
                        Text("Hourly Forecast")
                            .font(.title3)
                            .padding(.trailing, 8)
                        Spacer()
                    }
                }
                
                //Hours weather
                HourlyForecastCard()
                
                Spacer(minLength: 20)
                Divider()
                
                //Days weather
                VStack {
                    HStack {
                        
                        Text("7 day Forecast")
                            .font(.title3)
                            .padding(.trailing, 8)
                        Spacer()
                    }
                }
                
                WeekForecastCard()
                Spacer(minLength: 8)
            }
            .padding()
        }
        .edgesIgnoringSafeArea(.all)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(backCol)
    }
        
}

#Preview {
    ContentView(backCol: Color.white)
}
