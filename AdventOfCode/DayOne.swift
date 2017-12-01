//
//  DayOne.swift
//  AdventOfCode
//
//  Created by Paul Tiarks on 12/1/17.
//  Copyright © 2017 Paul Tiarks. All rights reserved.
//

import Foundation

struct DayOneCaptcha {

    // Advances the index by the specified amount, wrapping around to the start of the array
    static func wrappedIndex(for array: [Any], startingAt: Int, advancedBy: Int) -> Int {
        var fullIndex = startingAt + advancedBy
        while array.count - 1 < fullIndex {
            fullIndex -= array.count
        }
        return fullIndex
    }

    private static func solve(captcha: [String.Element], advance: Int) -> Int {
        var counter = 0
        var sum = 0
        for character in captcha {
            let nextIndex = wrappedIndex(for: captcha, startingAt: counter, advancedBy: advance)
            let next = captcha[nextIndex]

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

    // Return the sum of number characters in the string that match the next character
    static func solvePartOne(captcha: String) -> Int {
        let characters = Array(captcha)
        return solve(captcha: characters, advance: 1)
    }

    // Return the sum of number characters in the string that match the one halfway around the list
    static func solvePartTwo(captcha: String) -> Int {
        let characters = Array(captcha)
        return solve(captcha: characters, advance: characters.count / 2)
    }
}
