//
//  TabView.swift
//  Casa do Chefe
//
//  Created by Mauro Sys One on 3/29/22.
//

import SwiftUI

struct TabView: View {
    
    @State var index = 0
    @Environment(\.colorScheme) var schemee
    
    var body: some View {
        VStack(spacing: 0){
            
             //: Agrupou-se todas as View em uma camada unica
            
            ZStack{
                
                ContenteONe()
                    .opacity(self.index == 0 ? 1 : 0)
                
                CarrinhoView()
                    .opacity(self.index == 1 ? 1 : 0)
                
                MapEntregaView()
                    .opacity(self.index == 2 ? 1 : 0)
                
                UserAccountVIew()
                    .opacity(self.index == 3 ? 1 : 0)
                
            } //: ZStack
            
            
            HStack{
                Button(action: {
                    self.index = 0
                }, label: {
                    HStack(spacing: 6){
                        Image(systemName: "homekit")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(self.index == 0 ? .white : .primary)
                        
                        if self.index == 0{
                            Text("Inicio")
                                .foregroundColor(.white)
                        }
                        
                    } //: HStack
                    .padding(.vertical, 10)
                    .padding(.horizontal)
                    .background(self.index == 0 ? Color("Amarelo") : Color.clear)
                    .clipShape(Capsule())
                }) //: button 1
                
                Spacer(minLength: 0)
                
                Button(action: {
                    self.index = 1
                }, label: {
                    HStack(spacing: 6){
                        Image(systemName: "cart.badge.plus")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(self.index == 1 ? .white : .primary)
                        
                        if self.index == 1{
                            Text("Carrinho")
                                .foregroundColor(.white)
                        }
                    }//: HStack
                    .padding(.vertical, 10)
                    .padding(.horizontal)
                    .background(self.index == 1 ? Color("Amarelo") : Color.clear)
                    .clipShape(Capsule())
                }) //: Button 2
                
                Spacer(minLength: 0)
                
                Button(action: {
                    self.index = 2
                }, label: {
                    HStack(spacing: 6){
                        Image(systemName: "map.fill")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(self.index == 2 ? .white : .primary)
                        
                        if self.index == 2{
                            Text("Mapa")
                                .foregroundColor(.white)
                        }
                    } //: HStack
                    .padding(.vertical, 10)
                    .padding(.horizontal)
                    .background(self.index == 2 ? Color("Amarelo") : Color.clear)
                    .clipShape(Capsule())
                }) //: Button 3
                
                Spacer(minLength: 0)
                
                Button(action: {
                    self.index = 3
                }, label: {
                    HStack(spacing: 6){
                        Image(systemName: "person.circle")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(self.index == 3 ? .white : .primary)
                        
                        if self.index == 3{
                            Text("Perfil")
                                .foregroundColor(.white)
                        }
                    }//: Hstack
                    .padding(.vertical, 10)
                    .padding(.horizontal)
                    .background(self.index == 3 ? Color("Amarelo") : Color.clear)
                    .clipShape(Capsule())
                }) //: Button 4
            } //: HStack
            .padding(.horizontal, 25)
            .padding(.top)
            .padding(.bottom,UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 10 : UIApplication.shared.windows.first?.safeAreaInsets.bottom)
            .background(self.schemee == .dark ? Color.black : Color.white)
            .shadow(color: Color.primary.opacity(0.08), radius: 5, x: 5, y: -5)
        } //: VStack
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabView()
    }
}
