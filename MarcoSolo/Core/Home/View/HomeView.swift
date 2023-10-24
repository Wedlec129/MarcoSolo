//
//  HomeView.swift
//  MarcoSolo
//
//  Created by Борух Соколов on 12.10.2023.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var vm : VMhome
    
    var body: some View {
        
        ZStack{
            Background
            VStack(spacing: 38){
                
                TopBarView()
                SearchBarView()
                  
                
                    ButtonCategoryView()
                ScrollView(.vertical){
                    PostsView()
                }
                
                Spacer()
            }
        }
        .environmentObject(vm)
        
        
        
        
    }
}

//#Preview {
//    HomeView()
//        .environmentObject(VMhome())
//}

struct Preview_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            //.environmentObject(VMhome())
            .environmentObject(dev.VMH)
    }
}


extension HomeView{
    
    var Background: some View{
        Color.theme.white
            .ignoresSafeArea()
    }
}
