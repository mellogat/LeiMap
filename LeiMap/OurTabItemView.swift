//
//  OurTabItemView.swift
//  LeiMap
//
//  Created by ngom arona on 20/02/2023.
//

import SwiftUI


struct OurTabItemView: View {
    @State private var selectedTab = "Home"
    
    var body: some View {
             
        TabView(selection: $selectedTab) {
                    UserProfilView()
                        .tabItem {
                            Label("Profil", systemImage: "homekit")
                        }
                        .tag("Profil")

                    MapListView()
                        .tabItem {
                            Label("Map", systemImage: "person")
                        }
                        .tag("Map")
  
                }

    }
}

struct OurTabItemView_Previews: PreviewProvider {
    static var previews: some View {
        OurTabItemView()
            .environmentObject(LeiMapViewModel())
    }
}
