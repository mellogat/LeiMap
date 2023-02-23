//
//  MapListView.swift
//  LeiMap
//
//  Created by megat megat salman shukri on 30/01/2023.
//

import SwiftUI
import MapKit


struct MapListView: View {
    @StateObject var viewModel = LeiMapViewModel()
    @State private var region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 47.6407,
                                           longitude: 6.84168),
            latitudinalMeters: 750,
            longitudinalMeters: 750
        )
    @EnvironmentObject var lmVM: LeiMapViewModel
    
    var body: some View {
        NavigationView{
            GeometryReader { proxy in
                
                VStack(spacing: 0.0) {
                    
                    ZStack {
                        Map(coordinateRegion: $region) // MapView()
                        
                    }
                    .frame(height: proxy.size.height/3)
                    
                    
                    VStack {
                        switch viewModel.state2 {
                              case .success(let lieus):
                                Image("test")
                                    .resizable()
                                    .scaledToFit()
                                    .padding()
                                Text(lieus[0].nom)
                                Text(lieus[0].adresse)
                                Divider()
                              case .loading:
                                  ProgressView()
                              case .failed:
                                  Text("failed")
                          default:
                              EmptyView()
                          }
                       VStack {
                        switch viewModel.state {
                              case .success(let users):
                                List{
                                        ForEach(users, id: \.self){
                                        user in
                                            NavigationLink(destination: IndProfilView(user:user)){
                                                ListParticipant(user:user)
                                            }
                                          }
                                    }
                                .listStyle(PlainListStyle())
                              case .loading:
                                  ProgressView()
                              case .failed:
                                  Text("failed")
                          default:
                              EmptyView()
                          }
                      }
                      .task {
                          await viewModel.getParticipants()
                      }
                        Spacer()
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
                        Spacer()
                }
                .task {
                    await viewModel.getLieu()
                }
                .frame(height: 2*(proxy.size.height)/3)
            }
            .ignoresSafeArea()    }
        }
        
        
    }

}

struct MapListView_Previews: PreviewProvider {
    static var previews: some View {
        MapListView()
            .environmentObject(LeiMapViewModel())
    }
}
