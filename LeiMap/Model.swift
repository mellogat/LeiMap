//
//  Model.swift
//  LeiMap
//
//  Created by ngom arona on 30/01/2023.
//
import Foundation

struct User: Identifiable {
    let id: Int
    var name: String
    var email: String
    
    static var mockData = [
        User(id: 1, name: "Arona NGOM" ,email: "arona.ngom07@gmail.com"),
        User(id: 2, name: "Otto HAJDU",email: "otto@gmail.com"),
        User(id: 3, name: "Megat SALMAN",email: "megat@gmail.com")
    ]
}
