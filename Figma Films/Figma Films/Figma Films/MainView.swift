//
//  MainView.swift
//  Figma Films
//
//  Created by Pablo  on 4/1/25.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
        NavigationView{
            VStack{
                
                //Titulo
                
                HStack{
                    Text("Peliculas seleccionadas")
                        .font(Font.custom("Raleway", size: 27).weight(.bold))
                        .foregroundColor(.black)
                        .padding(.leading, 32)
                        .padding(.bottom, 10)
                    Spacer()
                }
                Spacer()
                
                ScrollView{
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())]) {
                        ForEach(Pelicula.datosEjemplo) { pelicula in
                            NavigationLink(destination: DetailView(pelicula: pelicula)) {
                                CardView(pelicula: pelicula)
                            }
                        }
                    }
                    .padding(.horizontal,15)
                    
                }
                
            }.background(
                Image("fondo")
                    .resizable()
                    .frame(width:383,height: 630)
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .opacity(0.2)
            )
            .accentColor(.white)
            .toolbar{
                ToolbarItem(placement: .principal) {
                    HStack{
                        
                        Image("movie_icon")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .padding(.horizontal,5)
                        
                        
                        Text("MOVIES")
                        .font(Font.custom("Raleway", size: 30).weight(.heavy))
                            .tracking(3)
                            .foregroundColor(.black)
                        
                        Image("movie_icon")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .padding(.horizontal,5)
                        
                    }
                }
                
                
            }
        }
    }
}
    

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
