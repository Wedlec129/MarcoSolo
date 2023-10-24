//
//  PostModel.swift
//  MarcoSolo
//
//  Created by Борух Соколов on 21.10.2023.
//

import Foundation
import SwiftUI

struct PostModel: Identifiable, Hashable {
    
    var id :String = UUID().uuidString
    var image:String
    var description:String
    
}
