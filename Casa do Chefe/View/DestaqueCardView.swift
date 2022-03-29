//
//  DestaqueCardView.swift
//  Casa do Chefe
//
//  Created by Mauro Sys One on 3/28/22.
//

import SwiftUI

struct DestaqueCardView: View {
    
    var product: ProductCasaChefe
    
    var body: some View {
        VStack {
            Image(product.imagem)
                .resizable()
                .frame(width: 300, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding()
            
            HStack {
                Text(product.nome)
                    .fontWeight(.bold)
                    .font(.title)
                    .foregroundColor(.white)
                    .padding(.top, 10)
                    .padding(.leading, -30)
            }
            .frame(width: 250, height: 50)
            .background(Color.black)
            .cornerRadius(20)
            .padding(.leading, -110)
            
            
            
            Text(product.preco)
                .foregroundColor(.secondary)
                .padding(.top, 4)
                .padding(.bottom)
                .padding(.leading, -110)
            
        } //: Vstack
        .background(
            Color.primary.opacity(0.06)
                .frame(width: UIScreen.main.bounds.width - 30)
                .cornerRadius(25)
                .padding(.top, 10)
        )
        .padding(.top, 25)
        .padding(.horizontal, 10)
    }
}

struct DestaqueCardView_Previews: PreviewProvider {
    static var previews: some View {
        DestaqueCardView(product: casaChefeData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
