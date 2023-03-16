//
//  Menu.swift
//  HakSikThat
//
//  Created by Eric Lee on 2023/03/16.
//

import Foundation


struct Menu : Hashable, Codable, Identifiable {
    
    var location: String
    var id : Int
    var kcal: Int
    var foods: String
    var cost : Int
    
}
