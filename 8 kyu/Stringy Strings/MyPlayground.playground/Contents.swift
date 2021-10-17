import Foundation

func stringy(_ size: Int) -> String {
    var string: String = ""
    for i in 1...size {
        (i % 2 != 0) ? string.append("1") : string.append("0")
    }
    return string
}

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.005 (0.007) seconds

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Test Example", testExample),
    ]

    func testExample() {
        XCTAssertEqual(stringy(1), "1")
        XCTAssertEqual(stringy(2), "10")
        XCTAssertEqual(stringy(3), "101")
    }
}

SolutionTest.defaultTestSuite.run()
