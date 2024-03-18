//
//  HomeView.swift
//  toyProject
//
//  Created by Genaro Gonzalez on 11/03/24.
//

import SwiftUI

let days: [String] = ["Monday", "Tuesday", "Wednesday"]
let hours: [String] = ["Now", "2 PM", "3 PM", "4 PM", "5 PM"]

struct HomeView: View {
    var weather: ResponseBody
    @StateObject var manager: LocationManager
    @State var backCol: Color
//    init(backCol: Color) {
//        self.backCol = backCol
//    }
    
  
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.offWhite
                VStack(alignment: .leading, spacing: 8 ) {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Weather UI App")
                                .font(.largeTitle)
                                .padding(.leading, 8)
                            if let location = manager.location {
                                Text("Longitude: \(location.longitude) Latitude: \(location.latitude)")
                                    .font(.subheadline).padding(.leading, 16)
                            }
                            else {
                                Text("Today \(Date().formatted(.dateTime.month().day().hour().minute()))")
                                    .font(.subheadline).padding(.leading, 16)
                            }
                        }
                        Spacer()
                        NeuIcon(icon: "ellipsis.circle.fill", foreColor: .daOrange, backColor: .offWhite, size: 48, expansion: 8, action: {print("alo")}).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 24))
                            
                    }
                    
                    
                    
                    MainWeatherCard(weather: weather).environmentObject(manager)
                    
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
    HomeView(weather: previewWeather, manager: LocationManager.init(), backCol: Color.offWhite)
}
