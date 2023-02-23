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
    var password: String
    var in_lieu: String
    var id_lieu: String
    
//    static var mockData = [
//        User(id: 1, name: "Arona NGOM" ,email: "arona.ngom07@gmail.com"),
//        User(id: 2, name: "Otto HAJDU",email: "otto@gmail.com"),
//        User(id: 3, name: "Megat SALMAN",email: "megat@gmail.com")
//    ]
}

struct Lieu: Identifiable, Codable, Hashable{
    let id: String
    var nom: String
    var adresse: String
    var url: URL?
    var longitude: String
    var latitude: String
    
}
