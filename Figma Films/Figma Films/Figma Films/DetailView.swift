//
//  DetailView.swift
//  Figma Films
//
//  Created by Pablo  on 4/1/25.
//
import SwiftUI

struct DetailView: View {
    
    var pelicula: Pelicula
    var body: some View {
        
        VStack(alignment: .leading) {
            
            // Imagen
            Image(pelicula.cartel)
                .resizable()
                .frame(width: 430, height: 490)
                .shadow(
                    color: Color.black.opacity(0.3), radius: 10, y: 8
                )
                .edgesIgnoringSafeArea(.top)
                .padding(.bottom, 0)
            
            
      
            
            // Contenido debajo de la imagen
            
            VStack(alignment: .leading, spacing: 10) {
                
                
                // Titulo, Año y puntuacion
                VStack(alignment: .leading, spacing: 8) {
                    Text(pelicula.titulo)
                        .font(Font.custom("Raleway", size: 26).weight(.bold))
                        .tracking(1.30)
                        .foregroundColor(.black)
                   
                    HStack{
                        Text(pelicula.anho)
                            .font(Font.custom("Raleway", size: 20).weight(.bold))
                            .tracking(0.80)
                            .foregroundColor(Color(red: 0.68, green: 0.27, blue: 0.27))
                        
                        // solo estrellas, alineadas horizontalmente
                        HStack {
                            ForEach(1...5, id: \.self) { index in
                                Image("star_icon")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .opacity(index <= pelicula.estrellas ? 1 : 0)
                            }
                            
                        }
                    }
                    .padding(.bottom, 10)
                    
                   
                    
                    
                    // Descripción
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Descripción")
                            .font(Font.custom("Raleway", size: 20).weight(.light))
                            .tracking(0.80)
                            .foregroundColor(Color(red: 0.42, green: 0.32, blue: 0.32))
                        
                        Text(pelicula.descripcion)
                            .font(Font.custom("Raleway", size: 16).weight(.light))
                            .tracking(0.80)
                            .foregroundColor(.black)
                            .lineLimit(nil)
                            .fixedSize(horizontal: false, vertical: true)
                    }
                    .padding(.bottom,10)
                    
                    
                    
                    Spacer()
                    
                    
                    
                    // Inicio bloque duracion/nacionalidad
                    HStack{
                        
                        // Duración
                        VStack(alignment: .leading, spacing: 8) {
                            ZStack {
                                Text(pelicula.duracion)
                                    .font(Font.custom("Raleway", size: 16).weight(.bold))
                                    .tracking(0.80)
                                    .foregroundColor(.black)
                                    .offset(x: 0.27, y: 16.50)
                                
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 96.46, height: 25)
                                    .background(Color(red: 0.85, green: 0.85, blue: 0.85).opacity(0.80))
                                    .cornerRadius(100)
                                    .offset(x: 0, y: 16.50)
                                    .shadow(
                                        color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 4, y: 4
                                    )
                                
                                Text("Duración")
                                    .font(Font.custom("Raleway", size: 16).weight(.light))
                                    .tracking(0.80)
                                    .foregroundColor(Color(red: 0.42, green: 0.32, blue: 0.32))
                                    .offset(x: -0.23, y: -19.50)
                            }
                            .frame(width: 96.46, height: 58)
                            // Agregamos padding para que se vea bien
                        }
                        
                        
                        
                        // Nacionalidad
                        VStack(alignment: .leading, spacing: 8) {
                            ZStack {
                                Text(pelicula.nacionalidad)
                                    .font(Font.custom("Raleway", size: 11).weight(.bold))
                                    .tracking(0.80)
                                    .foregroundColor(.black)
                                    .offset(x: -1, y: 16.50)
                                
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 96.46, height: 25)
                                    .background(Color(red: 0.85, green: 0.85, blue: 0.85).opacity(0.80))
                                    .cornerRadius(12.50)
                                    .offset(x: -1.27, y: 16.50)
                                    .shadow(
                                        color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 4, y: 4
                                    )
                                
                                Text("Nacionalidad")
                                    .font(Font.custom("Raleway", size: 16).weight(.light))
                                    .tracking(0.80)
                                    .foregroundColor(Color(red: 0.42, green: 0.32, blue: 0.32))
                                    .offset(x: 0, y: -19.50)
                            }
                            .frame(width: 105, height: 58)
                            
                        }
                    }
                    
                    //Bloque duracion /nacionalidad
                 
                    .padding(.bottom,60)
                    
                    Spacer()
                }
                .padding(EdgeInsets(top: -10, leading: 20, bottom: 20, trailing: 0))
                .frame(maxWidth: .infinity)
            }
            .background(Color.white)
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(pelicula: Pelicula.datosEjemplo[0])
    }
}
