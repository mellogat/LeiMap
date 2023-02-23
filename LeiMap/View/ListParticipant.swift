//
//  ListParticipant.swift
//  LeiMap
//
//  Created by megat megat salman shukri on 23/02/2023.
//

import SwiftUI

struct ListParticipant: View{
    let user : User
    
    var body: some View {
        VStack(){
            Text(user.nom)
            Text(user.email)
        }
    }
}

struct ListParticipant_Previews: PreviewProvider {
    static var previews: some View {
        ListParticipant(user: User.mockData[0])
            .previewLayout(.sizeThatFits)
    }
}
