//
//  PostCardView.swift
//  MarcoSolo
//
//  Created by Борух Соколов on 24.10.2023.
//

import SwiftUI

struct PostCardView: View {
    //@EnvironmentObject var vm : VMhome
    var post: PostModel
    var body: some View {
        
        Image(post.image)
                .padding(.vertical,10)
                .padding(.horizontal,5)
                .overlay(content: {
                    VStack(content: {
                        Spacer()
                        
                        Text("\(post.description)")
                            .foregroundStyle(.white)
                            .font(.custom("Montserrat", size: 18))
                            .fontWeight(.medium)
                            .kerning(0.8)
                            .frame(width: 165.06, alignment: .topLeading)
                            .padding()

                    })
                   
                })
        
    }
}


struct PostCardView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            //PostCardView(post: VMhome().posts[0])
            PostCardView(post: dev.post)
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}



