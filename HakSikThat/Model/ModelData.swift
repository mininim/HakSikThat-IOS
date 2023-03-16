//
//  ModelData.swift
//  HakSikThat
//
//  Created by Eric Lee on 2023/03/16.
//

import Foundation

final class ModelData {
    
    var menus: [Menu] = load("menutest.json")
    
}


func load<T: Decodable>(_ filename: String) -> T{
    let data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else{
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do{
        data = try Data(contentsOf: file)
    }catch{
        fatalError("Couldn't load \(filename) from main bundle:\n \(error)")
    }
    
    do{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }catch{
        fatalError("Couldn't parse \(filename) as \(T.self):\n \(error)")
    }
    
}
