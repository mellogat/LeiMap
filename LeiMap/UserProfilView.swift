//
//  UserProfilView.swift
//  LeiMap
//
//  Created by ngom arona on 07/02/2023.
//

import SwiftUI

struct UserProfilView: View {
    var body: some View {
        VStack{
            Image("photo")
                .resizable()
                .frame(height: 200)
                . aspectRatio(contentMode: .fit)
                .  edgesIgnoringSafeArea(.all)
            
            Spacer()
        }
    }
}

struct UserProfilView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfilView()
    }
}
