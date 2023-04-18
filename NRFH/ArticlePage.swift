//
//  ArticlePage.swift
//  NRFH
//
//  Created by bade başlıgil on 18.04.2023.
//

import SwiftUI


struct ArticlePage: View {
    
    
    @State private var isMenuExpanded = false
    @Binding var showArticlePage: Bool
    @State var activeLearnMore = false
    var body: some View {
        ZStack {
            Color.white
            
            VStack {
                
                /*
                HStack {
                    Button(action: {
                        self.isMenuExpanded.toggle()
                    }) {
                        Image(systemName: "line.horizontal.3")
                            .font(.system(size: 30))
                            .foregroundColor(.black)
                        
                    }
                    
                    Spacer()
                }
                .padding()
                */
                
                Spacer()
                
                ScrollView {
                    LazyVStack {
                        
                        Text("Article Page")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.indigo)
                            .multilineTextAlignment(.leading)
                            .offset(y: -5)
                        
                        Text(" Hate speech is defined as abusive and threatening language or behavior that shows prejudice towards someone based on their ethnicity, religion, gender, sexual preference, skin color, or other similar grounds. This is a global issue that leads to the separation of various groups, resulting in discrimination and segregation. This has been one of the world's most critical issues for a long time, resulting in bullying and differential treatment. Hate speech content in the media towards targeted ethnic communities can lead to isolation, physical and mental violence. ")
                            .font(.title3)
                            .offset(y: -20)
                            .frame(width:370)
                        
                            .padding(50)
                        
                        
                        VStack {
                            Button {
                                withAnimation {
                                    self.activeLearnMore = true
                                }
                            } label: {
                                Text("Learn More")
                                    .foregroundColor(.white)
                                    .frame(width:150, height:50)
                                    .cornerRadius(10)
                                    .background(.linearGradient(colors: [.orange, .yellow], startPoint: .top, endPoint: .bottomTrailing))
                                    .cornerRadius(30)
                            }
                        }
                    }
                }
                
                if isMenuExpanded {
                    MenuView(isMenuExpanded: $isMenuExpanded)
                }
            }
            .sheet(isPresented: $activeLearnMore) {
                ArticlePage2()
            }
        }
    }
    
    
    func View() {
        ZStack {
            Color.white
                .opacity(0.95)
            
            VStack {
                Button(action: {
                    
                }) {
                    Image(systemName: "xmark")
                        .font(.system(size: 30))
                        .foregroundColor(.black)
                }
                .padding(.top, 30)
                
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
                .padding(.bottom, 30)
                
                Button(action: {
                    // Handle menu item action here
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
                
                Button(action: {
                    // Handle menu item action here
                }) {
                    Text("Game Page")
                        .font(.headline)
                        .foregroundColor(.black)
                        .padding(.vertical, 10)
                }
                
                Spacer()
            }
        }
        .transition(.move(edge: .leading))
    }
    
    
    
    struct ArticlePage_Previews: PreviewProvider {
        static var previews: some View {
            ArticlePage(showArticlePage: .constant(false))
        }
    }
    
}
