//
//  Model.swift
//  LeiMap
//
//  Created by ngom arona on 30/01/2023.
//
import Foundation

struct User: Identifiable, Codable, Hashable {
    let id: String
    var nom: String
    var email: String
    var bio: String
    var password: String?
    var in_lieu: String
    var id_lieu: String?
    
    static var mockData = [
        User(id: "1", nom: "Arona NGOM" ,email: "arona.ngom07@gmail.com",bio:"Écrivez votre bio",in_lieu:"1"),
        User(id: "2", nom: "Otto HAJDU",email: "otto@gmail.com",bio:"Écrivez votre bio",in_lieu:"0"),
        User(id: "3", nom: "Megat SALMAN",email: "megat@gmail.com",bio:"Écrivez votre bio",in_lieu:"1")
    ]
}

struct Lieu: Identifiable, Codable, Hashable{
    let id: String
    var nom: String
    var adresse: String
    var url: URL?
    var longitude: String
    var latitude: String
    
}
