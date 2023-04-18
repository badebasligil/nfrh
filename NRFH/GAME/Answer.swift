//
//  Answer.swift
//  NRFH
//
//  Created by bade başlıgil on 18.04.2023.
//

import Foundation

struct Answer: Identifiable {
    var id = UUID()
    var option1: AttributedString
    var isCorrect: Bool
}
