//
//  AboutPost.swift
//  MarcoSolo
//
//  Created by Борух Соколов on 24.10.2023.
//

import SwiftUI


struct AboutPost: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var post: PostModel
    
    var imageName: String{
        post.image
    }
    
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.secondary
                .edgesIgnoringSafeArea(.all)
                .overlay{
                    VStack{
                        HStack{
                            ButtonDismiss
                            Spacer()
                        }
                        Spacer()
                        
                        RoundedRectangle(cornerRadius: 20)
                            .overlay{
                                VStack{
                                    HStack{
                                        Spacer()
                                        Image("\(imageName)")
                                        Spacer()
                                    }
                                    Text("\(post.description)")
                                        .foregroundStyle(.red)
                                        .font(.custom("Montserrat", size: 32))
                                        .fontWeight(.semibold)
                                    Spacer()
                                   
                                    
                                }
                                .padding()
                            }
                        
                            .foregroundStyle(.white)
                            .padding()
                        
                        
                        Spacer()
                    }
                }
            
        }
        
    }
}

struct AboutPost_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            //AboutPost(post: VMhome().posts[0])
            AboutPost(post: dev.post)
                .environmentObject(VMhome())
                .previewLayout(.sizeThatFits)
              
            
        }
    }
}
extension AboutPost{
    
    var ButtonDismiss: some View{
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        }, label: {
            Image(systemName: "xmark")
                .foregroundColor(.white)
                .font(.largeTitle)
                .padding(20)
        })
    }
    
    
    
    
    
}
