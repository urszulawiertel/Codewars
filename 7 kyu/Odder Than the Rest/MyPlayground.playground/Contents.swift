import Foundation

func oddOne(_ arr: [Int]) -> Int? {
    for (index, number) in arr.enumerated() {
        if number % 2 != 0 {
            return index
        }
    }
    return nil
}

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.007 (0.009) seconds

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Basic Tests", testBasics),
    ]

    func testBasics() {
        XCTAssertEqual(oddOne([2,4,6,7,10]), 3)
        XCTAssertEqual(oddOne([2,16,98,10,13,78]), 4)
        XCTAssertEqual(oddOne([4,-8,98,-12,-7,90,100]), 4)
        XCTAssertEqual(oddOne([2,4,6,8]), nil)
    }
}

SolutionTest.defaultTestSuite.run()
