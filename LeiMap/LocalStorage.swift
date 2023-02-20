//
//  LocalStorage.swift
//  LeiMap
//
//  Created by ngom arona on 20/02/2023.
//

import Foundation


class LocalStorage {
     
    public static var myValueU: String {
        set {
            UserDefaults.standard.set(newValue, forKey: "username")
        }
        get {
            return UserDefaults.standard.string(forKey: "username") ?? ""
        }
    }
    
    public static var myValueE: String {
        set {
            UserDefaults.standard.set(newValue, forKey: "email")
        }
        get {
            return UserDefaults.standard.string(forKey: "email") ?? ""
        }
    }
    
    public static var myValueB: String {
        set {
            UserDefaults.standard.set(newValue, forKey: "biographie")
        }
        get {
            return UserDefaults.standard.string(forKey: "biographie") ?? ""
        }
    }
    
   

    
}
