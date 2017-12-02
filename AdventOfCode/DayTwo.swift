//
//  DayTwo.swift
//  AdventOfCode
//
//  Created by Paul Tiarks on 12/2/17.
//  Copyright © 2017 Paul Tiarks. All rights reserved.
//

import Foundation

typealias Row = [Int]

func rows(for string: String) -> [Row] {
    var rows = [] as [Row]
    let rowStrings = string.components(separatedBy: .newlines)
    for stringValue in rowStrings {
        let values = stringValue.components(separatedBy: .whitespaces)
        var newRow = [] as [Int]
        for value in values {
            if let parsedValue = Int(value) {
                newRow.append(parsedValue)
            }
        }
        rows.append(newRow)
    }
    return rows
}

struct Spreadsheet {

    private let rows: [Row]

    init(rows: [Row]) {
        self.rows = rows
    }

    func checksum() -> Int {
        return 0
    }
}
