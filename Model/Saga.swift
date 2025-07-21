//
//  Saga.swift
//  ComicsFiguresApp
//
//  Created by Jordi on 18/7/25.
//

//
import SwiftUI


struct Saga: Identifiable {
    let id = UUID()
    let name: String
    let color: Color
    var comics: [Comic]
    
    var progressText: String {
        let owned = comics.filter { $0.owned }.count
        return "\(owned)/\(comics.count)"
    }
}
