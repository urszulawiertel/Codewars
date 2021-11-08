import Foundation

func overTheRoad(address: Int, street: Int) -> Int {
    let oppositeNumber = street * 2 - (address - 1)
    return oppositeNumber
}

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.007 (0.010) seconds

final class SolutionTest: XCTestCase {
    static var allTests = [
        ("Basic Tests", testExample),
    ]

    func testExample() {
        let expectedValues = [6, 4, 5, 8, 16]
        let inputsToBeTested = [(1, 3), (3, 3), (2, 3), (3, 5), (7, 11)]
        for (inputs, expectedValue) in zip(inputsToBeTested, expectedValues) {
            let result = overTheRoad(address: inputs.0, street: inputs.1)
            XCTAssertEqual(result, expectedValue, "Testing for address = \(inputs.0) and street = \(inputs.1) failed! Expected \(expectedValue) but got \(result)")
        }
    }
}

SolutionTest.defaultTestSuite.run()
