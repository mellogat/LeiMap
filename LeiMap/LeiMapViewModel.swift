//
//  LeiMapViewModel.swift
//  LeiMap
//
//  Created by megat megat salman shukri on 30/01/2023.
//

import Foundation

@MainActor
class LeiMapViewModel: ObservableObject {
    
    enum State {
        case notAvailable
        case loading
        case success(data: [User])
        case failed(error: Error)
    }
    
    @Published var state: State = .notAvailable
    @Published var hasError: Bool = false
    
    private let service = ParticipantService()
    
    func getParticipants() async {
        self.state = .loading
        self.hasError = false
        do {
            let users = try await service.fetchParticipant()
            self.state = .success(data: users)
        } catch {
            self.state = .failed(error: error)
            self.hasError = true
            print(error)
        }
    }
    
    enum State2 {
        case notAvailable
        case loading
        case success(data: [Lieu])
        case failed(error: Error)
    }
    @Published var state2: State2 = .notAvailable
    
    func getLieu() async {
        self.state2 = .loading
        self.hasError = false
        do {
            let lieus = try await service.fetchLieu()
            self.state2 = .success(data: lieus)
        } catch {
            self.state2 = .failed(error: error)
            self.hasError = true
            print(error)
        }
    }
    
    @Published var users : [User] = []
    
    init() {
        getMockContact()
        //getContacts()
    }
    
    func getMockContact() {
        users.append(contentsOf: User.mockData)
    }

}
