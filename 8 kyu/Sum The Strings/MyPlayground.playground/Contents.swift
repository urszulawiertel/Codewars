import Foundation

func sum_str(_ a:String, _ b:String) -> String {
    return String((Int(a) ?? 0) + (Int(b) ?? 0))
}

import XCTest

// Executed 2 tests, with 0 failures (0 unexpected) in 0.006 (0.196) seconds

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Sample Tests", testExample),
        ("Test with empty strings", testExample1),
    ]

    func testExample() {
        XCTAssertEqual(sum_str("4","5"), "9")
        XCTAssertEqual(sum_str("34","5"), "39")
    }
    func testExample1() {
        XCTAssertEqual(sum_str("9",""), "9")
        XCTAssertEqual(sum_str("",""), "0")
    }
}

SolutionTest.defaultTestSuite.run()


