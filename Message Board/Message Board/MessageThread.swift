//
//  MessageThread.swift
//  Message Board
//
//  Created by Andrew Liao on 8/8/18.
//  Copyright © 2018 Andrew Liao. All rights reserved.
//

import Foundation

class MessageThread: Codable, Equatable{
    let title: String
    let identifier: String
    var messages: [MessageThread.Message]
    
    init(title: String, identifier: String = UUID().uuidString, messages: [MessageThread.Message] = [MessageThread.Message]()) {
        self.title = title
        self.identifier = identifier
        self.messages = messages
        
    }
    
    static func ==(lhs:MessageThread, rhs: MessageThread) ->Bool {
        return lhs.title == rhs.title &&
            lhs.identifier == rhs.identifier &&
            lhs.messages == rhs.messages
    }
    
    
    
    struct Message:Equatable,Codable{
        let text: String
        let sender: String
        let timestamp: Date
        
        init(text: String, sender: String, timestamp: Date = Date()) {
            self.text = text
            self.sender = sender
            self.timestamp = timestamp
            
        }
    }
    
}
