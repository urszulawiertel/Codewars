import Foundation

func bouncingBall(_ h: Double, _ bounce: Double, _ window: Double) -> Int {
    guard h > 0, window < h, bounce > 0, bounce < 1 else { return -1 }
    var count = 1
    var bounceHeight = h * bounce
    while bounceHeight > window {
        count += 2
        bounceHeight *= bounce
    }
    return count
}

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.008 (0.011) seconds

class SolutionTest: XCTestCase {
    static var allTests = [
        ("bouncingBall", testExample),
    ]

    func testequal(_ h: Double, _ bounce: Double, _ window: Double, _ expected: Int) {
        XCTAssertEqual(bouncingBall(h, bounce, window), expected)
    }

    func testExample() {
        testequal(3, 0.66, 1.5, 3)
        testequal(30, 0.66, 1.5, 15)
        testequal(10, 0.6, 10, -1)
        testequal(40, 1, 10, -1)
    }
}

SolutionTest.defaultTestSuite.run()
