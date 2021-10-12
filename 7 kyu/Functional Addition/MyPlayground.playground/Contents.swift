import Foundation

func addNumber(_ n: Int) -> ((Int) -> Int) {
    return { $0 + n }
}

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.006 (0.008) seconds

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Test Example", testExample),
    ]

    func testExample() {
        XCTAssertEqual(addNumber(1)(3), 4)
        XCTAssertEqual(addNumber(2)(2), 4)
        XCTAssertEqual(addNumber(0)(-15), -15)
        XCTAssertEqual(addNumber(10)(3), 13)
        XCTAssertEqual(addNumber(100)(23), 123)
    }
}

SolutionTest.defaultTestSuite.run()
