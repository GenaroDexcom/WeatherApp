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

struct ContentView: View {
    
    @State private var backCol: Color
    init(backCol: Color) {
        self.backCol = backCol
    }
    
    let days: [String] = ["Monday", "Tuesday", "Wednesday"]
    let hours: [String] = ["Now", "2 PM", "3 PM", "4 PM"]

    
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
                RoundedRectangle(cornerSize: CGSize(width: 10, height: 10) )
                    .fill(Color.offWhite)
                    .frame(width: .infinity, height: 220)
                    .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                    .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                    .overlay(
                        VStack{
                            HStack {
                                VStack(alignment: .center){
                                    Text("Tijuana").font(.system(size: 34))
                                    Circle()
                                        .fill(Color.offWhite)
                                                       .frame(width: 100, height: 100)
                                                       .overlay(Image(systemName: "sun.min.fill").resizable()
                                                        .foregroundColor(.orange)
                                                        .padding(14))
                                                       .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                                                       .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
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
                )
                

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
                HStack {
                    ForEach(hours, id: \.self) {
                        hour in  RoundedRectangle(
                            cornerSize: CGSize(width: 10, height: 10) )
                            .fill(Color.offWhite)
                            .frame(width: 80, height: 100)
                            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                            .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                            .overlay(
                                VStack {
                                    Text(hour.description).font(.footnote)
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
                                
                            ).padding(3)
                    }
                }
                
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
