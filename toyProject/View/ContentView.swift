//
//  ContentView.swift
//  toyProject
//
//  Created by Genaro Gonzalez on 07/02/24.
//

import SwiftUI
import CoreLocation


struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    @State var enabledLocation = false
    var weatherManager = WeatherManager()
    @State var weather: ResponseBody?
    
    var body: some View {
        VStack {
            if (locationManager.status == .authorized) {
                if let weather = weather {
                    HomeView(weather: weather, manager: locationManager, backCol: .offWhite)
                }

            } else if (locationManager.status == .deniedRestricted){
                //TODO: Another View
                Text("Restricted")
            } else if (locationManager.status == .notDetermined) {
                WelcomeView().environmentObject(locationManager)
            }
        }
    }
}

#Preview {
    ContentView()
}
