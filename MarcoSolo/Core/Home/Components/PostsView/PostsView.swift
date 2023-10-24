//
//  PostsView.swift
//  MarcoSolo
//
//  Created by Борух Соколов on 21.10.2023.
//

import SwiftUI

struct PostsView: View {
    @EnvironmentObject var vm: VMhome

    @State var selectedPost: PostModel?

    var body: some View {

        VStack {
            Text("Spotlight de Experiencias")
                .font(.custom("Montserrat", size: 24))
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .bold()

            LazyVGrid(columns: [GridItem(.adaptive(minimum: 140))]) {
                ForEach(vm.posts, id: \.self) { post in
                    PostCardView(post: post)
                        .onTapGesture {
                            selectedPost = post
                        }
                }
            }
            .sheet(item: $selectedPost) { post in
                AboutPost(post: post)
            }
        }
    }
}


struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PostsView()
                .environmentObject(VMhome())
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}


