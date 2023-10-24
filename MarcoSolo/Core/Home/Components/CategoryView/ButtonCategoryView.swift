//
//  ButtonCategoryView.swift
//  MarcoSolo
//
//  Created by Борух Соколов on 13.10.2023.
//

import SwiftUI

struct ButtonCategoryView: View {
    @EnvironmentObject var vm : VMhome
    
    var body: some View {
        
      
        HStack(spacing: 34){
            ForEach(vm.categorys) { item in
                
                VStack{
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.theme.gray, lineWidth: 1)
                        .frame(width: 68 ,height: 68)
                        .overlay(
                            Image(item.image)
                        )
                    
                    //  Text("Restaurantes")
                    Text(item.description)
                        .font(.custom("Montserrat", size: 14))
                        .fontWeight(.semibold)
                    
                }
                
            }
        }
        
    }
}

struct ButtonCategory_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ButtonCategoryView()
                .environmentObject(VMhome())
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}

