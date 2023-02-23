//
//  ContentView.swift
//  LeiMap
//
//  Created by megat megat salman shukri on 30/01/2023.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 47.6407,
                                           longitude: 6.84168),
            latitudinalMeters: 750,
            longitudinalMeters: 750
        )
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
