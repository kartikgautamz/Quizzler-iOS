//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Kartik Gautam on 08/04/24.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
