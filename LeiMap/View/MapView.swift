//
//  ContentView.swift
//  LeiMap
//
//  Created by megat megat salman shukri on 30/01/2023.
//

import SwiftUI
import MapKit


struct Location: Identifiable {
    let id = UUID()
    let title: String
    let coordinate: CLLocationCoordinate2D
}

extension Location {
    static func getLocations() -> [Location] {
        return [
            Location(title: "Paris", coordinate: CLLocationCoordinate2D(latitude: 51.589, longitude: 4.77)),
            Location(title: "Dakar", coordinate: CLLocationCoordinate2D(latitude: 51.55, longitude: 5.05 ))
        ]
    }
}

struct MapView: View {
    
    @State private var locations: [Location] = Location.getLocations()
    @State private var trackingMode = MapUserTrackingMode.follow
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.5, longitude: 4.9), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    
    var body: some View {
        NavigationView {
            Map(coordinateRegion: $region, interactionModes: .all, showsUserLocation: true, userTrackingMode: $trackingMode, annotationItems: locations) { (location) -> MapAnnotation<PinView> in
                MapAnnotation(coordinate: location.coordinate) { PinView(title: location.title)}
            }.navigationBarHidden(true)
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
