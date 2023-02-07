//
//  LeiMapViewModel.swift
//  LeiMap
//
//  Created by megat megat salman shukri on 30/01/2023.
//

import Foundation

class LeiMapViewModel: ObservableObject {
    
    @Published var users : [User] = []
    
    init() {
        getMockContact()
        //getContacts()
    }
    
    func getMockContact() {
        users.append(contentsOf: User.mockData)
    }

}
