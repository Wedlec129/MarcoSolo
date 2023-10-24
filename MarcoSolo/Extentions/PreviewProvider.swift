//
//  PreviewProvider.swift
//  MarcoSolo
//
//  Created by Борух Соколов on 24.10.2023.
//

import Foundation
import SwiftUI

extension PreviewProvider{

    static var dev: DevelopmerPreview {
        return DevelopmerPreview.instance
    }
}

final class DevelopmerPreview {
    static let instance = DevelopmerPreview()
    //что бы нельзя было вызвать по новой бекткласа
    private init() { }
    let VMH = VMhome()
    let post = PostModel(image: "Frame_1", description: "Top 10 restaurantes")
}
        
