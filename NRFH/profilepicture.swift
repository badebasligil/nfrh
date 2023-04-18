//
//  profilepicture.swift
//  NRFH
//
//  Created by bade başlıgil on 18.04.2023.
//

import SwiftUI

struct profilepicture: View {
    var body: some View {

            
            VStack {
                
                // MARK: - HEADER
                
                Group {
                    Image("1")
                        .offset(x: -90, y:310)
                    Image("2")
                        .offset(x: 90, y:154)
                    Image("3")
                        .offset(x: -90, y:155)
                    Image("4")
                        .offset(x: 90, y:-0)
                    Image("5")
                        .offset(x: -90, y:-0)
                    Image("6")
                        .offset(x: 90, y:-155)
                }
                
                // MARK: - CENTER
                
                Text("Choose Your")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .bold()
                    .padding()
                    .foregroundColor(.orange)
                    .offset(x:-70, y: -730)
                
                Text("Profile Picture")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .bold()
                    .padding()
                    .foregroundColor(.orange)
                    .offset(x:-58, y: -775)
                
                VStack{
                  
                    NavigationLink(destination: HomePage()){
                        Button("Continue") {
                            
                        }
                        .foregroundColor(.white)
                        .frame(width:300, height:50)
                        .background(Color.orange)
                        .cornerRadius(10)
                        .offset(y: -250)
                        
                        
                    }
                }
                
                
                
            }
            .navigationBarBackButtonHidden(true)
        }
    }

struct profilepicture_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            profilepicture()
        }
    }
}
