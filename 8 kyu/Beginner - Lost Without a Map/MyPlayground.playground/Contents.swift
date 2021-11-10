import Foundation

func maps(a : Array<Int>) -> Array<Int> {
    return a.map { $0 * 2 }
}

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.007 (0.009) seconds

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Works for some examples", testExample),
        ("Works for empty array", testEmptyArray)
    ]

    func testExample() {
        XCTAssertEqual(maps(a: [1,2,3,4,5]), [2,4,6,8,10])
        XCTAssertEqual(maps(a: [1,-2,3,4,5]), [2, -4, 6, 8, 10])
        XCTAssertEqual(maps(a: [-1,2,3,4,-5]), [-2, 4, 6, 8, -10])
    }

    func testEmptyArray() {
        XCTAssertEqual(maps(a: []), []);
    }
}

SolutionTest.defaultTestSuite.run()
