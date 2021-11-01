import UIKit

func opposite(number: Double) -> Double {
    return number * -1
}

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.004 (0.007) seconds

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Basic test", testExample),
    ]

    func testExample() {
        XCTAssertEqual(opposite(number: 1), -1)
        XCTAssertEqual(opposite(number: 14), -14)
        XCTAssertEqual(opposite(number: -34), 34)
    }
}

SolutionTest.defaultTestSuite.run()
