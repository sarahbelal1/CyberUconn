//
//  QuestionViewModel.swift
//
//  Created by Sarah Belal on 14/08/2022.
//  Copyright © 2022 Apple. All rights reserved.
//

import Foundation
struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
}
