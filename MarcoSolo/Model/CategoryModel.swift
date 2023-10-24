//
//  CategoryModel.swift
//  MarcoSolo
//
//  Created by Борух Соколов on 13.10.2023.
//

import Foundation
import SwiftUI

struct CategoryModel: Identifiable {
    
    var id :String = UUID().uuidString
    var image:String
    var description:String
    
}
