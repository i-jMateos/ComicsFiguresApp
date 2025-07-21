//
//  Comic.swift
//  ComicsFiguresApp
//
//  Created by Jordi on 17/7/25.
//

import Foundation
import SwiftUI

struct Comic: Identifiable {
    let id: String           // <-- antes era Int
    let title: String
    let imageName: String
    var owned: Bool
    var favorite: Bool
}
