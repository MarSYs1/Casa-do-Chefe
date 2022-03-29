//
//  DestaqueScrollView.swift
//  Casa do Chefe
//
//  Created by Mauro Sys One on 3/28/22.
//

import SwiftUI

struct DestaqueScrollView: View {
    
    var products: [ProductCasaChefe] = casaChefeData
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            HStack(spacing: 20){
                ForEach(products){listProduct in
                    DestaqueCardView(product: listProduct)
                } //: loop
            } //: HStack
        }) //: ScrollView
    }
}

struct DestaqueScrollView_Previews: PreviewProvider {
    static var previews: some View {
        DestaqueScrollView()
    }
}
