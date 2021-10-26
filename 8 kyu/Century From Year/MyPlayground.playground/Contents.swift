import Foundation

func century(_ year: Int) -> Int {
    if (1...100).contains(year) {
        return 1
    }
    else if year % 100 == 0 {
        return year / 100
    }
    else {
        return (year / 100) + 1
    }
}

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.007 (0.010) seconds

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Basic tests", testBasics),
    ]

    func testBasics() {
        XCTAssertEqual(century(1705), 18)
        XCTAssertEqual(century(1900), 19)
        XCTAssertEqual(century(1601), 17)
        XCTAssertEqual(century(2000), 20)
        XCTAssertEqual(century(89), 1)
    }
}

SolutionTest.defaultTestSuite.run()
