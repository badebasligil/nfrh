//
//  ContentView.swift
//  NRFH
//
//  Created by bade başlıgil on 18.04.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var questionManager = QuestionManager()
    @State var showHomePage = false
    var body: some View {
        NavigationView {
            VStack(spacing: 40) {
                VStack(spacing: 20) {
                    
                    
                   
                    
                    Text("Game: Quiz")
                        .font(.largeTitle.bold())
                        .foregroundColor(.indigo)
                       
                    
                    Text("Are you ready to start?")
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                        
                }
                
                NavigationLink {
                    HomeView()
                        .environmentObject(questionManager)
                } label: {
                    PrimaryButton(text: "Let'start")
      
                }
                
                NavigationLink {
                    HomePage()
                } label: {
                    PrimaryButton(text: "Home Page")
                }
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
            .background(.gray.opacity(0.2))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
