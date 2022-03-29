//
//  ContenteONe.swift
//  Casa do Chefe
//
//  Created by Mauro Sys One on 3/29/22.
//

import SwiftUI

struct ContenteONe: View {
    
    //: Propriedades
    
    var products: [Produtos] = produtos
    
    var body: some View {
        VStack{
            HeaderView()
                .padding(.horizontal)
            
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack{
                    
                    SearchView()
                        .padding(.horizontal)
                        .padding(.top, 15)
                    
                    headlineString(headText: "Destaque")
                        .padding(.horizontal)
                        .padding(.top, 30)
                    
                    DestaqueScrollView()
                        .padding(.horizontal)
                    
                    headlineString(headText: "Temos a qualidade que deseja")
                        .padding(.horizontal)
                        .padding(.top, 30)
                    
                    ForEach(products, id: \.self){lisTproduct in
                        HStack(spacing: 15){
                            productView(products: lisTproduct)
                                .padding(.top, 20)
                        } //: Hstack
                    } //: Loop
                } //: VStack
            }) //: ScrollView
            Spacer()
        } //: VStack
    }
}

struct ContenteONe_Previews: PreviewProvider {
    static var previews: some View {
        ContenteONe()
    }
}
