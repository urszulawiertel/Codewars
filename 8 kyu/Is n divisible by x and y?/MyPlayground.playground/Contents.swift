import Foundation

func isDivisible(_ n: Int, _ x: Int, _ y: Int) -> Bool {
    return n % x == 0 && n % y == 0
}

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.006 (0.008) seconds

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Basic tests", testsExample),
    ]

    func testsExample() {
        XCTAssertEqual(isDivisible(3, 3, 4), false)
        XCTAssertEqual(isDivisible(12, 3, 4), true)
        XCTAssertEqual(isDivisible(8, 3, 4), false)
        XCTAssertEqual(isDivisible(48, 3, 4), true)
        XCTAssertEqual(isDivisible(100, 5, 10), true)
        XCTAssertEqual(isDivisible(100, 5, 3), false)
        XCTAssertEqual(isDivisible(4, 4, 2), true)
        XCTAssertEqual(isDivisible(5, 2, 3), false)
        XCTAssertEqual(isDivisible(17, 17, 17), true)
        XCTAssertEqual(isDivisible(17, 1, 17), true)
    }
}

SolutionTest.defaultTestSuite.run()
