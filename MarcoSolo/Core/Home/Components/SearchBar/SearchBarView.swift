//
//  SearchBarView.swift
//  MarcoSolo
//
//  Created by Борух Соколов on 13.10.2023.
//

import SwiftUI

struct SearchBarView: View {

    
    @State var search=""
    var body: some View {
        HStack{
               
                //сам квадрат
                rectangle
                .overlay(
                    //внутренее содержимое (картики, текст поле)
                   insideComponents
                )
        }
    }
    
}


struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SearchBarView()
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}

extension SearchBarView{
    
    var rectangle: some View {
        RoundedRectangle(cornerRadius: 42)
            .stroke(Color.theme.gray, lineWidth: 1)
            .frame(width: 400, height: 55)
            .foregroundStyle(.white)
    }
    
    
    var insideComponents: some View{
        HStack{
            Image("search")
               
            TextField("Buscar",text: $search)
                .font(.custom("Montserrat", size: 24))
            Spacer()
            Image("voise")
            
        }
            .padding(.horizontal,16)
    }
    
}
