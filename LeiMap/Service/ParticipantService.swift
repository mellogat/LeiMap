//
//  ParticipantService.swift
//  LeiMap
//
//  Created by megat megat salman shukri on 23/02/2023.
//

import Foundation

struct ParticipantService {
    enum ParticipantError : Error {
        case failed
        case failedToDecode
        case invalideStatusCode
    }
    
        func fetchParticipant() async throws -> [User] {
            let url = URL(string:
                            "http://www-etu.iut-bm.univ-fcomte.fr/~ohajdu/listeParticipants.php"
            )!
            
            let (data, response) = try await URLSession.shared.data(from: url)
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else{
                throw ParticipantError.invalideStatusCode
            }
            
            let decodeData = try JSONDecoder().decode([User].self, from: data)
            
            return decodeData
        }
    
    func fetchLieu() async throws -> [Lieu] {
        let url = URL(string:
                        "http://www-etu.iut-bm.univ-fcomte.fr/~ohajdu/listeLieus.php"
        )!
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else{
            throw ParticipantError.invalideStatusCode
        }
        
        let decodeData = try JSONDecoder().decode([Lieu].self, from: data)
        
        return decodeData
    }
    
    func fetchParticipantDansUnLieu(for lieu: String) async throws -> [User] {
        let baseUrl = "http://www-etu.iut-bm.univ-fcomte.fr/~ohajdu/listeParticipantsDansUnLieu.php/?lieu=\(lieu)"
        
        guard let url = URL(string: baseUrl) else {
            throw ParticipantError.invalideStatusCode
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else{
            throw ParticipantError.invalideStatusCode
        }
        
        let decodeData = try JSONDecoder().decode([User].self, from: data)
        
        return decodeData
    }
    

}
