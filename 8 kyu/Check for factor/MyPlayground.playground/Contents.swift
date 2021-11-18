import Foundation

func checkForFactor(_ base: Int, _ factor: Int) -> Bool {
    return (base % factor) == 0
}

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.003 (0.119) seconds

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Basic tests", testExample),
    ]

    func testExample() {
        XCTAssertEqual(checkForFactor(10, 2), true)
        XCTAssertEqual(checkForFactor(63, 7), true)
        XCTAssertEqual(checkForFactor(2450, 5), true)
        XCTAssertEqual(checkForFactor(24612, 3), true)
        XCTAssertEqual(checkForFactor(9, 2), false)
        XCTAssertEqual(checkForFactor(653, 7), false)
        XCTAssertEqual(checkForFactor(2453, 5), false)
        XCTAssertEqual(checkForFactor(24617, 3), false)
    }
}

SolutionTest.defaultTestSuite.run()
