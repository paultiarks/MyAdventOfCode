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
        var rowChecksums = [] as [Int]
        for row in rows {
            var maxValue = row.first ?? 0
            var minValue = row.first ?? 0
            for value in row {
                maxValue = max(maxValue, value)
                minValue = min(minValue, value)
            }
            let newChecksum = abs(maxValue - minValue)
            rowChecksums.append(newChecksum)
        }
        var accumulator = 0
        for rowChecksum in rowChecksums {
            accumulator += rowChecksum
        }
        return accumulator
    }
}
