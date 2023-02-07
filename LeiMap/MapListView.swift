//
//  MapListView.swift
//  LeiMap
//
//  Created by megat megat salman shukri on 30/01/2023.
//

import SwiftUI
import MapKit


struct MapListView: View {
    @State private var region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 37.334_900,
                                           longitude: -122.009_020),
            latitudinalMeters: 750,
            longitudinalMeters: 750
        )
    @EnvironmentObject var lmVM: LeiMapViewModel
    
    var body: some View {
        
        
        GeometryReader { proxy in
            
            VStack(spacing: 0.0) {
                
                ZStack {
                    Map(coordinateRegion: $region) // MapView()
                    
                }
                .frame(height: proxy.size.height/3)
                
                
                VStack {
                    Image("test")
                        .resizable()
                        .scaledToFit()
                        .padding()
                    Text("Lieu&")
                    Text("Adresse")
                    
                    List{
                        ForEach(lmVM.users){
                            user in
                            IndProfilView(user:user)
                            
                        }
                    }
                    
                    
                    Button {
                        
                    } label: {
                        Text("Check In")
                            .frame(height: 55)
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.white)
                            .background(Color.accentColor)
                            .font(.headline)
                            .cornerRadius(10)
                            .padding()
                    }
                    
                    
            }
            .frame(height: 2*(proxy.size.height)/3)

        }
        .ignoresSafeArea()
        
    }
    }
    
}

struct MapListView_Previews: PreviewProvider {
    static var previews: some View {
        MapListView()
            .environmentObject(LeiMapViewModel())
    }
}
