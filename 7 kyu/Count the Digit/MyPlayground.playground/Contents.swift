import Foundation

func nbDig(_ n: Int, _ d: Int) -> Int {
    var digitCount = 0
    for i in 0...n {
        let squaredNumber = String(i * i)
        for char in squaredNumber {
            if String(char) == String(d) {
                digitCount += 1
            }
        }
    }
    return digitCount
}

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 1.529 (1.531) seconds

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Test Example", testExample),
    ]

    func testExample() {
        XCTAssertEqual(nbDig(5750, 0), 4700)
        XCTAssertEqual(nbDig(11011, 2), 9481)
        XCTAssertEqual(nbDig(12224, 8), 7733)
        XCTAssertEqual(nbDig(11549, 1), 11905)
    }
}

SolutionTest.defaultTestSuite.run()
