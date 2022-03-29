//
//  HeaderView.swift
//  Casa do Chefe
//
//  Created by Mauro Sys One on 3/29/22.
//

import SwiftUI

struct HeaderView: View {
    
    @Environment(\.colorScheme) var schame
    
    
    var body: some View {
        ZStack {
            HStack(spacing: 15){
                Button(action: {
                    
                }, label: {
                    Image(systemName: "square.grid.3x1.below.line.grid.1x2")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(.primary)
                }) //: Button 1
                Spacer()
                
                Button(action: {
        
                    
                }, label: {
                    Image(systemName: "qrcode.viewfinder")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(.primary)
                })  //: Button 2
                
                Button(action: {
                    UIApplication.shared.windows.first?.rootViewController?.overrideUserInterfaceStyle = self.schame == .dark ? .light : .dark
                }, label: {
                    Image(systemName: self.schame == .dark ? "sun.max.fill" : "moon.fill")
                        .font(.system(size: 22))
                        .foregroundColor(.primary)
                }) //: button 3
                
            } //: HStack
            
            Text("Casa do Chefe")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color("Amarelo"))
                .shadow(color: .black, radius: 0.3, x: 0, y: 0.3)
        }//: Zstack
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
