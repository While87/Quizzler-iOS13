//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by while on 8/21/20.
//  Copyright © 2020 while. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answers: Array <String>
    let correctAnswer: String
    
    init(q: String, a: Array<String>, correctAnswer: String) {
        
        self.text = q
        self.answers = a
        self.correctAnswer = correctAnswer
    }
}
