//
//  ArticlePage2.swift
//  NRFH
//
//  Created by bade başlıgil on 18.04.2023.
//

import SwiftUI


struct ArticlePage2: View {
    
    @State private var isMenuExpanded = false
    
    
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
                        
                        Text("Hate speech is defined as abusive and threatening language or behavior that shows prejudice towards someone based on their ethnicity, religion, gender, sexual preference, skin color, or other similar grounds. This is a global issue that leads to the separation of various groups, resulting in discrimination and segregation. This has been one of the world's most critical issues for a long time, resulting in bullying and differential treatment. Hate speech content in the media towards targeted ethnic communities can lead to isolation, physical and mental violence. It is important to understand that hate speech is a form of discrimination and that it has serious negative consequences both for the individuals who are targeted and for society as a whole. Hate speech can lead to real harm, including psychological and physical harm, and can contribute to a culture of fear, anxiety, and intolerance. It can result in discrimination, harassment, and violence, which can undermine social cohesion by creating divisions and eroding trust between different groups.Our team, NRFH, stands for 'No Room For Hate', and our main goal is to raise awareness about hate speech, especially among younger people. Our project aims to inform people about the impact that hate speech has on many communities around the world and help them understand the importance of putting an end to hate speech both on the internet and in real life. We are working with the Hrant Dink Foundation and the Human Rights Court of France to educate people about hate speech through their social platforms. Our app includes games, an AI chatbot, and articles about hate speech to educate people and make them aware of other types of discrimination faced by many communities.We believe that it is crucial to focus on hate speech as it is often overlooked when discussing discrimination in our daily lives. Our goal is to raise more awareness, especially among younger people, to emphasize the major issues that hate speech brings to the table. Our app is designed to make learning about hate speech educational and fun so that it catches people's attention and encourages them to stand up against hate speech. It is essential to address hate speech because it causes harm to individuals and societies. It can damage social cohesion by creating divisions and eroding trust between different groups. The consequences of hate speech are severe, and it is crucial to put an end to it to ensure that all individuals can live with dignity and respect.")
                            .font(.title3)
                            .offset(y: 20)
                            .frame(width:350)
                        
                    }
                }
                    }
                    
                    if isMenuExpanded {
                        MenuView(isMenuExpanded: $isMenuExpanded)
                    }
                }
            }
        }
        
        struct MenuView: View {
            @Binding var isMenuExpanded: Bool
            
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
        }
 

struct ArticlePage2_Previews: PreviewProvider {
static var previews: some View {
    ArticlePage2()
}
}
