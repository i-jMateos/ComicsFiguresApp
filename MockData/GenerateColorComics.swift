//
//  GenerateColorComics.swift
//  ComicsFiguresApp
//
//  Created by Jordi on 17/7/25.
//

import SwiftUI

func generateColorComics() -> [Saga] {
   return [
       Saga(
           name: "Saga Origen",
           color: .sagaOrigen,
           comics: (1...8).map {
               Comic(id: "color_\($0)", title: "Color Volum \($0)", imageName: "\($0)", owned: false, favorite: false)
           }
       ),
       // ... añade el resto de sagas igual
   ]
}
