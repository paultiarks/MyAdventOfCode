//
//  DayOne.swift
//  AdventOfCode
//
//  Created by Paul Tiarks on 12/1/17.
//  Copyright © 2017 Paul Tiarks. All rights reserved.
//

import Foundation

struct DayOneCaptcha {
    // Return the sum of number characters in the string that match the next character
    static func solve(captcha: String) -> Int {
        let characters = Array(captcha)
        guard let first = characters.first else { return 0 }

        var counter = 0
        var sum = 0
        for character in characters {
            var next = character
            if (counter + 1) == characters.count {
                next = first
            } else {
                next = characters[counter + 1]
            }

            if let firstInt = Int(character.description),
                let secondInt = Int(next.description) {
                if firstInt == secondInt {
                    sum += firstInt
                }
            }


            counter += 1
        }

        return sum
    }
}
