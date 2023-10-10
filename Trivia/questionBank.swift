//
//  questionBank.swift
//  Trivia
//
//  Created by Sai Mannava on 10/9/23.
//

import Foundation
import UIKit

struct questionBank {
  let section: Section
  let question: Question
  let answerA: AnswerA
  let answerB: AnswerB
  let answerC: AnswerC
  let answerD: AnswerD
}

enum Section {
    case Action
    case Comedy
    case Horror
    case End
    
    var description: String {
        switch self {
        case .Action:
            return "Action"
        case .Comedy:
            return "Comedy"
        case .Horror:
            return "Horror"
        case .End:
            return "3/3!"
            
        }
    }
}
    
enum Question {
  case A
  case B
  case C
  case D
        
var description: String {
    switch self {
        case .A:
            return "What is the #1 movie franchise?"
        case .B:
            return "What is the #1 Comedy series?"
        case .C:
            return "What is the #1 Horror film?"
        case .D:
            return "Good Choices!"
        }
    }
}

enum AnswerA {
  case A
  case B
  case C
        
var description: String {
    switch self {
        case .A:
            return "Indiana Jones"
        case .B:
            return "Mr.Bean"
        case .C:
            return "Conjuring"
        }
    }
}
enum AnswerB {
  case A
  case B
  case C
        
var description: String {
    switch self {
        case .A:
            return "Avengers"
        case .B:
            return "Friends"
        case .C:
            return "Scream"
        }
    }
}
enum AnswerC {
  case A
  case B
  case C
        
var description: String {
    switch self {
        case .A:
            return "Star Wars"
        case .B:
            return "Seinfield"
        case .C:
            return "Hereditary"
        }
    }
}
enum AnswerD {
  case A
  case B
  case C
        
var description: String {
    switch self {
        case .A:
            return "Hunger Games"
        case .B:
            return "Tom and Jerry"
        case .C:
            return "American Psycho"
        }
    }
}
