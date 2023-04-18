//
//  HomePage.swift
//  NRFH
//
//  Created by bade başlıgil on 18.04.2023.
//

import SwiftUI

struct HomePage: View {
    
    @State private var username = ""
    @State private var password = ""
    @State private var email = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showinghome = false
    @State var isMenuExpanded = false
    @State var deneme: Bool = false
    
    var body: some View {
        ZStack {
            Color.white
    
        
        VStack {
            HStack {
                Button(action: {
                    self.isMenuExpanded.toggle()
                }) {
                    Image(systemName: "line.horizontal.3")
                        .font(.system(size: 30))
                        .foregroundColor(.black)
                        .offset(x: 20)
                        
                }
                
                Spacer()
            }
            .padding()
            
            Spacer()
            
            Circle()
                .scale(2.2)
                .foregroundColor(.indigo.opacity(0.5))
                .offset(x: -220, y: 450)
            Circle()
                .scale(2.3)
                .foregroundColor(.orange.opacity(0.5))
                .offset(x: -100, y: 450)
            Circle()
                .scale(2.3)
                .foregroundColor(.pink.opacity(0.4))
                .offset(x: 100, y: 350)
           
            Group {
                Text("Home Page")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.indigo)
                    .multilineTextAlignment(.leading)
                    .offset(x: -82,y: -385)
                
                Text ("Hate Speech is defined as abusive and speech or behavior that demonstrates prejudices based on ethnicity, religion, gender, sexual preference, skin color or other similar grounds.")
                    .font(.title2)
                    .offset(y: -400)
                    .frame(width:350, height: 200)
                

               
            }
            if isMenuExpanded {
                MenuView(isMenuExpanded: $isMenuExpanded, deneme: $deneme)
            }
        }
        .overlay {
            if let deneme = deneme {
                ArticlePage()
            }
        }
    }
}

struct MenuView: View {
    @Binding var isMenuExpanded: Bool
    @Binding var deneme: Bool
    var body: some View {
        ZStack {
            Color.white
                .opacity(0.95)
            
            VStack {
                Button(action: {
                    self.isMenuExpanded.toggle()
                }) {
                    Image(systemName: "xmark")
                        .font(.system(size: 30))
                        .foregroundColor(.black)
                }
                .padding(.top, -50)
                
                Spacer()
            }
            
            VStack {
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Text("Menu")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Spacer()
                }
                .padding(.bottom, 20)
                
                Button(action: {
                    // Handle menu item action here
                    self.deneme.toggle()
                }) {
                    Text("Article Page")
                        .font(.headline)
                        .foregroundColor(.black)
                        .padding(.vertical, 10)
                }
                
                
                Button(action: {
                    // Handle menu item action here
                }) {
                    Text("Game Page")
                        .font(.headline)
                        .foregroundColor(.black)
                        .padding(.vertical, 10)
                }
                
                
                Button(action: {
                    // Handle menu item action here
                }) {
                    Text("Chat AI")
                        .font(.headline)
                        .foregroundColor(.black)
                        .padding(.vertical, 10)
                }
                
                Button(action: {
                    // Handle menu item action here
                }) {
                    Text("Home Page")
                        .font(.headline)
                        .foregroundColor(.black)
                        .padding(.vertical, 10)
                }
                
                .padding(.bottom, 350)
                
                Spacer()
            }
        }
        .transition(.move(edge: .leading))
    }
}


        }
    
struct SwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}

