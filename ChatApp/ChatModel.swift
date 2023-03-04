//
//  ChatModel.swift
//  ChatApp
//
//  Created by Şükrü Özkoca on 4.03.2023.
//

import Foundation

struct Chat: Identifiable {
    var id : UUID { person.id }
    let person : Person
    var messages : [Message]
    var hasUnreadMessage = false
}

struct Person: Identifiable {
    let id = UUID()
    let name : String
    let imgString : String
    
}

struct Message: Identifiable {
    
    enum MessageType {
        case Sent, Received
    }
    
    let id = UUID()
    let date: Date
    let text: String
    let type: MessageType
    
    init(_ text: String, type: MessageType, date: Date) {
        self.date = date
        self.text = text
        self.type = type
    }
    
    init(_ text: String, type: MessageType) {
        self.init(text, type: type, date: Date())
    }
}

extension Chat {
    static let sampleChat = [
        Chat(person: Person(name: "Sukru", imgString: "character1"), messages: [
            Message("Hey Sukru", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("I am just developing an WhatsApp Clone app and it is so hard to create a fake bla bla", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("Please I need your help :(", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("Sure how can I help you flo ?", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message("Maybe you send me some \"good\" jokes", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message("Sure I can do that. No problem :) :)", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message("What do you call a fish with no eyes?", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message("Hmm, Idk", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message("A fsh", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message("OMG so bad :D :D", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message("Let me try one", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message("There are 10 types of people in this world, those who understand binary and those who don't", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message("This joke is soo old haha", type: .Received, date: Date())
        ], hasUnreadMessage: true),
        
        Chat(person: Person(name: "Ozcan", imgString: "character2"), messages: [
            Message("Hey Ozcan", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("Can you show me a new Meditation exercise? The last one was so helpful :)", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("Yeah sure flo. Have you tested the mindful breathing techniques yet?", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message("No what is that?", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message("This technique can increase your energy and help you to feel more alert.", type: .Received)
        ],hasUnreadMessage: true),
        
        Chat(person: Person(name: "Ali", imgString: "character3"), messages: [
            Message("Hey Ali, how is your dev journey going?", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 4)),
            Message("Thanks for asking flo. It's going great. I just completed the HWS course. I have learned so much an now I am starting to building my own app.", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 4)),
            Message("That sounds great. I'm so proud of you, that you completed the course Most people don't have the endurance to complete it, because the cannot sit with the problem long enough. So you can definetly see this as an archievment :D", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 2))
        ])
        

    ]
}
