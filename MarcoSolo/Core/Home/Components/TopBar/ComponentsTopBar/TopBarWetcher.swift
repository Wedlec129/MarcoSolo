//
//  TopBarWetcher.swift
//  MarcoSolo
//
//  Created by Борух Соколов on 12.10.2023.
//

import SwiftUI

struct TopBarWetcher: View {
    var body: some View {
        
        HStack(spacing: 8){
            TopBarButton(iconName: "cloud",width: 24,height: 24)
            Text("17º")
                .font(.custom("Montserrat", size: 16))
                //.fontWeight(.bold)
                .foregroundStyle(.gray)
        }
    }
}

struct TopBarWetcher_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TopBarWetcher()
                .previewLayout(.sizeThatFits)
        }
    }
}
