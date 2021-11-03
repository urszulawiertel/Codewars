import Foundation

func accum(_ s: String) -> String {
    var arr: [String] = []
    for (i, v) in s.enumerated() {
        arr.append(String(repeating: v, count: i + 1).capitalized)
    }
    return arr.joined(separator: "-")
}

import XCTest

// Executed 3 tests, with 0 failures (0 unexpected) in 0.007 (0.009) seconds

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Test Accum", testAccum),
        ("Test Accum", testAccum1),
        ("Test Accum", testAccum2)
    ]

    func testAccum() {
        XCTAssertEqual(accum("abcd"), "A-Bb-Ccc-Dddd")
    }

    func testAccum1() {
        XCTAssertEqual(accum("RqaEzty"), "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy")
    }

    func testAccum2() {
        XCTAssertEqual(accum("cwAt"), "C-Ww-Aaa-Tttt")
    }
}

SolutionTest.defaultTestSuite.run()
