//
//  VMhome.swift
//  MarcoSolo
//
//  Created by Борух Соколов on 13.10.2023.
//

import Foundation
import SwiftUI

final class VMhome: ObservableObject {
    
    // MARK: категории для постов
    @Published var categorys: [CategoryModel] = []
    
    
    @Published var posts: [PostModel] = []
    
    init(){
        fetchCategory()
        fetchPosts()
    }
    
    func fetchCategory(){
        categorys.append(CategoryModel(image: "Restorants", description: "Restaurantes"))
        categorys.append(CategoryModel(image: "LangMark", description: "Landmarks"))
        categorys.append(CategoryModel(image: "Museum", description: "Actividades"))
        categorys.append(CategoryModel(image: "Events", description: "Eventos"))
    }
    
    func fetchPosts(){
        posts.append(PostModel(image: "Frame_1", description: "Top 10 restaurantes"))
        posts.append(PostModel(image: "Frame_2", description: "Mejores bares para tapas y pintxos"))
        posts.append(PostModel(image: "Frame_3", description: "Conciertos"))
        posts.append(PostModel(image: "Frame_4", description: "Vuelos directos a Madrid"))
    }
}

