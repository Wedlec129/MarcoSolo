//
//  TopBarButton.swift
//  MarcoSolo
//
//  Created by Борух Соколов on 12.10.2023.
//

import SwiftUI

//описываем кнопки (то есть удобно вызывем их очень удобно)))
struct TopBarButton: View {
    let iconName :String
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        Image(iconName)
            .resizable()
            .frame(width: width,height: height)
            //.padding(.horizontal,16)
    }
}


struct TopBarButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            VStack{
                TopBarButton(iconName: "LOCATION_ICON",width: 16,height: 21)
               
            }
            
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}
