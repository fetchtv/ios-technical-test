//
//  Bundle+Extensions.swift
//  HereApp
//
//  Created by Brent Crowley on 4/5/2023.
//

import Foundation

extension Bundle {
    
    static func loadAPIKeyPlistName(_ name:String) -> [String]? {
        
        guard let url = Bundle.main.url(
            forResource: name,
            withExtension: "plist"),
              let plist = try? Data(contentsOf: url),
              let data = try? PropertyListSerialization.propertyList(from: plist, format: nil) as? [String] else {
            print("Couldn't make plist.")
            return nil
        }
        
        return data
        
    }
    
}