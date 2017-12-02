//
//  DayTwoTests.swift
//  AdventOfCodeTests
//
//  Created by Paul Tiarks on 12/2/17.
//  Copyright © 2017 Paul Tiarks. All rights reserved.
//

import XCTest
@testable import AdventOfCode

class DayTwoTests: XCTestCase {
    let testValue = ["5 1   9   5",
    "7   5    3",
    "2   4   6   8"]
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testRowParser() {
        let test = rows(for: testValue)
        let rowOne = [5,1,9,5]
        XCTAssertEqual(rowOne, test[0])
        let rowTwo = [7,5,3]
        XCTAssertEqual(rowTwo, test[1])
        let rowThree = [2,4,6,8]
        XCTAssertEqual(rowThree, test[2])
    }

    func testExample() {
        let sheet = Spreadsheet(rows: [])
        XCTAssertEqual(sheet.checksum(), 0)
    }
    
}
