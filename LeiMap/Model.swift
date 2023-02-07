//
//  Model.swift
//  LeiMap
//
//  Created by megat megat salman shukri on 30/01/2023.
//
import Foundation

struct User: Identifiable {
    let id: Int
    var name: String
    var email: String
    
    static var mockData = [
        User(id: 1, name: "Taylor Swift" ,email: "Taylor Swift"),
        User(id: 2, name: "Justin Bieber",email: "Taylor Swift"),
        User(id: 3, name: "Adele Adkins",email: "Taylor Swift")
    ]
}
