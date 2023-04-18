//
//  AIPage.swift
//  NRFH
//
//  Created by bade başlıgil on 19.04.2023.
//

import SwiftUI
import Combine

struct AIPage: View {
    @State var chatMessages: [ChatMessage] = []
    @State var messageText: String = ""
   
    private var cancellables = Set<AnyCancellable>()
    
    let openAIService = OpenAIService()
    
    var body: some View {
        
        VStack {
            ScrollView{
                LazyVStack {
                    ForEach(chatMessages, id: \.id) { message in
                        messageView(message: message)
                    }
                }
            }
            HStack {
                TextField("Enter a message", text: $messageText){
                }
                    .padding()
                    .background(.gray.opacity(0.1))
                    .cornerRadius(12)
                Button {
                    sendMessage(chatMessages: &chatMessages, messageText: messageText)
                } label: {
                    Text("Send")
                        .foregroundColor(.white)
                        .padding()
                        .background(.black)
                        .cornerRadius(12)
                }

                }
            .padding()
            }
        .padding()
        }
        }
        func messageView(message: ChatMessage) -> some View {
            return HStack {
                if message.sender == .me { Spacer() }
            }
            Text(message.content)
                .foregroundColor(message.sender == .me ? .white : .black)
                .padding()
                .background(message.sender == .me ? .indigo : .gray.opacity(0.1))
                .cornerRadius(16)
            
            if message.sender == .gpt { Spacer() }
        }
    

func sendMessage(chatMessages: inout [ChatMessage], messageText: String) {
    let myMessage = ChatMessage(id: UUID().uuidString, content: messageText, dateCreated: Date(), sender: .me)
    chatMessages.append(myMessage)
    OpenAIService.sendMessage(message:  messageText ).sink { completion in
        //Handle error
    } receiveValue: { reponse in
        guard let textResponse = .response.choices.first?.text else { return }
        let gptMessage = ChatMessage(id: reponse.id, content: textResponse, dateCreated: Date(), sender: .gpt)
        chatMessages.append(gptMessage)

    }
    .store(in: &cancellables)
    
    .messageText = ""
}
    
  
       

    
    struct ChatMessage {
        let id: String
        let content: String
        let dateCreated: Date
        let sender: MessageSender
    }
    
    enum MessageSender{
        case me
        case gpt
    }
    
    extension ChatMessage {
        static let sampleMessages = [
            ChatMessage(id: UUID().uuidString, content: "Sample Message From Me", dateCreated: Date(), sender: .me),
            ChatMessage(id: UUID().uuidString, content: "Sample Message From Gpt", dateCreated: Date(), sender: .gpt),
            ChatMessage(id: UUID().uuidString, content: "Sample Message From Me", dateCreated: Date(), sender: .me),
            ChatMessage(id: UUID().uuidString, content: "Sample Message From Gpt", dateCreated: Date(), sender: .gpt)
        ]
    }


struct AIPage_Previews: PreviewProvider {
    static var previews: some View {
        AIPage()
    }
}
