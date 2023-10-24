//
//  TopBarView.swift
//  MarcoSolo
//
//  Created by Борух Соколов on 12.10.2023.
//

import Foundation
import SwiftUI

//топ бар(верхня понель для отображения сразу всех элементов)
struct TopBarView: View {
    var body: some View {
        
        VStack(alignment: .leading){
            HStack(){
                TopBarButton(iconName: "LOCATION_ICON",width: 16,height: 21)
                    .padding(.horizontal,16)
                Text("Madrid")
                    .font(.custom("Montserrat", size: 24))
                    .fontWeight(.bold)
                Spacer()
                TopBarButton(iconName: "arrow_down",width: 27,height: 27)
                Spacer()
                TopBarButton(iconName: "Notiofication_icon",width: 36,height: 36)
                    .padding(.horizontal,16)
                
            }
            TopBarWetcher()
                .padding(.horizontal,16)
        }
            
         
        
    }
}
//
//#Preview {
//    Group{
//        TopBarView()
//            .previewLayout(.sizeThatFits)
//    }
//}


struct TopBarView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TopBarView()
                .previewLayout(.sizeThatFits)
        }
    }
}



