//
//  headlineString.swift
//  Casa do Chefe
//
//  Created by Mauro Sys One on 3/29/22.
//

import SwiftUI

struct headlineString: View {
    
    var headText: String
    
    var body: some View {
        HStack {
            Text(headText)
                .fontWeight(.bold)
                .font(.title)
            Spacer()
        } //: Hstack
    }
}

struct headlineString_Previews: PreviewProvider {
    static var previews: some View {
        headlineString(headText: "Nosso Productos")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
