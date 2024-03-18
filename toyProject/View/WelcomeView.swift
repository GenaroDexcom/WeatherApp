//
//  WelcomeView.swift
//  toyProject
//
//  Created by Genaro Gonzalez on 12/03/24.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    
    @EnvironmentObject var locationManager: LocationManager
    var body: some View {
        VStack {
            VStack(spacing: 20, content: {
                Text("The Weather App").font(.title).bold()
                
                Text("Enable Share Location").font(.headline)
            }).multilineTextAlignment(.center)
                .padding()
            
            LocationButton(.shareCurrentLocation) {
                locationManager.requestLocation()
            }.cornerRadius(30)
                .foregroundColor(.white)
        }
    }
}

#Preview {
    WelcomeView()
}
