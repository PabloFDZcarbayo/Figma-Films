//
//  CardView.swift
//  Figma Films
//
//  Created by Pablo  on 4/1/25.
//

import SwiftUI

struct CardView: View {
    
    var pelicula: Pelicula
    var body: some View {
        
        HStack{
            
            VStack (alignment: .leading, spacing: 8) {
                Image(pelicula.cartel)
                    .resizable()
                    .frame(width: 130.54, height: 210)
                    .padding (5)
                    .shadow(radius: 10)
                    .cornerRadius(10)
                
                
                Text(pelicula.titulo)
                    .font(Font.custom("Raleway", size: 14).weight(.bold))
                    .tracking(0.80)
                    .foregroundColor(.black)
                    
                ZStack() {
                    Text(pelicula.genero)
                        .font(Font.custom("Raleway", size: 16).weight(.bold))
                        .foregroundColor(.black)
                       
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 65, height: 25)
                        .background(Color(red: 0.85, green: 0.85, blue: 0.85).opacity(0.80))
                        .cornerRadius(100)
                        
                }
                .frame(width: 65, height: 25)
               
            }
        }
        
    }
    
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(
        pelicula: Pelicula.datosEjemplo[0])
    }
}
