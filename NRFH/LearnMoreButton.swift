//
//  LearnMoreButton.swift
//  NRFH
//
//  Created by bade başlıgil on 18.04.2023.
//


import SwiftUI

struct LearnMoreButton: View {
    var text: String
    
    var body: some View {
        Text(text)
            .foregroundColor(.white)
            .padding()
            .padding(.horizontal)
            .background(.linearGradient(colors: [.orange, .yellow], startPoint: .top, endPoint: .bottomTrailing))
            .cornerRadius(30)
            .shadow(radius: 10)
    }
}

struct LearnMoreButton_Previews: PreviewProvider {
    static var previews: some View {
        LearnMoreButton(text: "Learn More")
    }
}

