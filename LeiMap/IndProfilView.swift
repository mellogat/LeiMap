//
//  IndProfilView.swift
//  LeiMap
//
//  Created by megat megat salman shukri on 30/01/2023.
//


import SwiftUI

struct IndProfilView: View {
    
    let user: User
    
    var body: some View {
        
        HStack{
            Text(user.name)
        }
        .padding(.vertical, 10)
        .font(.title2)
    }
}

struct IndProfilView_Previews: PreviewProvider {
    static var previews: some View {
        IndProfilView(user: User.mockData[0])
            .previewLayout(.sizeThatFits)
    }
}
