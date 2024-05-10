//
//  Musicidentifiables.swift
//  PlayList
//
//  Created by user256729 on 5/11/24.
//

import Foundation

struct MusicInspiration: Identifiable {
    
    let name: String
    let imageName : String
    let description: String
    var ratedE: Bool = false
    let id = UUID()
    
    static func examples() -> [MusicInspiration] {
        
        [MusicInspiration(name: "Dog Days",
                          imageName: "dog-days",
                          description: "Florence+The Machine"),
         MusicInspiration(name: "Glass House",
                          imageName: "glass-house",
                          description: "Maribou State",
                          ratedE: true),
         MusicInspiration(name: "Against the grain",
                          imageName: "against-the-grain",
                          description: "City and colour"),
         MusicInspiration(name: "Homemade Dynamite",
                          imageName: "homemade-dynamite",
                          description: "Lorde",
                          ratedE: true),
         MusicInspiration(name: "Let go",
                          imageName: "let-go",
                          description: "LAUREL"),
         MusicInspiration(name: "Smile",
                          imageName: "smile",
                          description: "Wolf Alice"),
         MusicInspiration(name: "The kids from yesterday",
                          imageName: "the-kids",
                          description: "My chemical romance")]
    }
    
    static func example1() -> MusicInspiration{
        MusicInspiration(name: "Dog Days",
                          imageName: "dog-days",
                          description: "Florence+The Machine")
    }
    static func example2() -> MusicInspiration{
        MusicInspiration(name: "The kids from yesterday",
                         imageName: "the-kids",
                         description: "My chemical romance")
    }
}
