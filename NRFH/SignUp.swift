//
//  SignUp.swift
//  NRFH
//
//  Created by bade başlıgil on 18.04.2023.
//

import SwiftUI



struct SignUp: View {
    @State private var username = ""
    @State private var password = ""
    @State private var email = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false

    
    var body: some View {
            
            
            ZStack {
                
                
                Color.indigo
                    .ignoresSafeArea()
                Circle()
                    .scale(1.2)
                    .foregroundColor(.white.opacity(1.0))
                Circle()
                    .scale(1.4)
                    .foregroundColor(.white.opacity(0.7))
                Circle()
                    .scale(1.6)
                    .foregroundColor(.white.opacity(0.4))
                Circle()
                    .scale(1.8)
                    .foregroundColor(.white.opacity(0.2))
                
                VStack {
                    Text("Sign Up!")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                        .foregroundColor(.orange)
                    TextField("Email", text: $email)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.2))
                        .cornerRadius(10)
                    TextField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.2))
                        .cornerRadius(10)
                    TextField("Username", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.2))
                        .cornerRadius(10)
                   
                    VStack {
                        NavigationLink(destination: profilepicture()){
                            Button("Sign Up") {
                            }
                                .foregroundColor(.white)
                                .frame(width:300, height:50)
                                .cornerRadius(10)
                                .navigationBarHidden(true)
                                .background(.linearGradient(colors: [.orange, .yellow], startPoint: .top, endPoint: .bottomTrailing))
                                .cornerRadius(10)
                                            }
                    }
                   
               
                    VStack {
                        NavigationLink(destination: LogInPage()){
                            Text("Already have an account? Log In Now!")
                                
                        }
                       
                    }
                    
                    .foregroundColor(.red)
                    
                    
                    
                    
                }
                
            }
            .navigationBarBackButtonHidden(true)
        }
        
       
    
   
            }





struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SignUp()
        }
        
    }
}

