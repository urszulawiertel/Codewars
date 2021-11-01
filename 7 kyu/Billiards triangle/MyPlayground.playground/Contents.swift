import Foundation

func pyramid(_ balls: Int) -> Int{
    var ballsPerLevel: Int = 0
    for level in 1...balls {
        ballsPerLevel += level
        if ballsPerLevel >= balls - level {
            return level
        }
    }
    return 0
}

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.250 (0.253) seconds

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Test Example", testExample),
    ]

    func testExample() {
        XCTAssertEqual(pyramid(1), 1)
        XCTAssertEqual(pyramid(4), 2)
        XCTAssertEqual(pyramid(20), 5)
        XCTAssertEqual(pyramid(100), 13)
        XCTAssertEqual(pyramid(9999) , 140)
    }
}

SolutionTest.defaultTestSuite.run()
