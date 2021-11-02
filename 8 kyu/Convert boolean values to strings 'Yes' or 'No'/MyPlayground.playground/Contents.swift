import Foundation

func boolToWord(_ bool: Bool) -> String {
    return bool ? "Yes" : "No"
}

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.004 (0.007) seconds

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Fixed Tests", testFixed)
    ]

    func testFixed() {
        XCTAssertEqual(boolToWord(true), "Yes", "Input: true")
        XCTAssertEqual(boolToWord(false), "No", "Input: false")
    }
}

SolutionTest.defaultTestSuite.run()
