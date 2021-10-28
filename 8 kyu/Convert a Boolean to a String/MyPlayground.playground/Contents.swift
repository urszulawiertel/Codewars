import Foundation

func booleanToString(_ b: Bool) -> String {
  return String(b)
}

import XCTest

// Executed 2 tests, with 0 failures (0 unexpected) in 0.005 (0.218) seconds

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Function should return \"true\" when true is passed as input.", testExample1),
        ("Function should return \"false\" when false is passed as input.", testExample2)
    ]

    func testExample1() {
        XCTAssertEqual(booleanToString(true), "true")
    }

    func testExample2() {
        XCTAssertEqual(booleanToString(false), "false")
    }
}

SolutionTest.defaultTestSuite.run()
