//
//  productView.swift
//  Casa do Chefe
//
//  Created by Mauro Sys One on 3/29/22.
//

import SwiftUI

struct productView: View {
    
    var products: Produtos
    
    var body: some View {
        VStack{
            Image(products.image)
                .resizable()
                .frame(width: 160, height: 160, alignment: .center)
            HStack {
                VStack {
                    Text(products.name)
                        .fontWeight(.bold)
                    Text(products.preco)
                        .padding(.top, 8)
                } // Vstack
                .padding()
                .background(Color.gray.opacity(0.08))
                .cornerRadius(20)
                .padding(.leading, -25)
                .shadow(color: .black, radius: 0.3, x: 0, y: 0.3)
                
                Spacer()
                
                VStack{
                    
                    Text("Qualidade comprovada")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                        HStack {
                            ForEach(0..<5){listStar in
                            Image(systemName: "star.square")
                                .foregroundColor(Color("Amarelo"))
                        } //: Hsatck
                            .padding(.top, 8)
                    }
                } //: Vstack
                
            } //: Hstack
            
        } //: VStack
        .padding()
        .frame(width: UIScreen.main.bounds.width  - 30)
        .background(Color.primary.opacity(0.06))
        .cornerRadius(20)
    }
}

struct productView_Previews: PreviewProvider {
    static var previews: some View {
        productView(products: produtos[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
