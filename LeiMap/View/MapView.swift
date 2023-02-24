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
            Location(title: "1", coordinate: CLLocationCoordinate2D(latitude: 47.6407, longitude: 6.84168)),
            Location(title: "2", coordinate: CLLocationCoordinate2D(latitude: 47.6435, longitude: 6.85776 ))
        ]
    }
}

struct MapView: View {
    
    @State private var locations: [Location] = Location.getLocations()
    @State private var trackingMode = MapUserTrackingMode.follow
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 47.641193, longitude: 6.847646),latitudinalMeters: 2000,longitudinalMeters: 2000)
    
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
