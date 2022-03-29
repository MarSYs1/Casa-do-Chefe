//
//  SearchView.swift
//  Casa do Chefe
//
//  Created by Mauro Sys One on 3/29/22.
//

import SwiftUI

struct SearchView: View {
    
    @State var pesquisar: String = ""
    
    var body: some View {
        HStack(spacing: 15){
            TextField("Pesquisar", text: self.$pesquisar)
            
            if self.pesquisar != ""{
                Button(action: {
                    
                }, label: {
                   Image(systemName: "magnifyingglass.circle")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .foregroundColor(Color("Amarelo"))
                }) //: Button
            }//: Controle
        }//: HStack
        .padding(.vertical, 10)
        .padding(.horizontal)
        .background(Color.primary.opacity(0.06))
        .cornerRadius(15)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
