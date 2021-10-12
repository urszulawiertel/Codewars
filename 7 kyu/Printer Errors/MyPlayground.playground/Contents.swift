import Foundation

func printerError(_ s: String) -> String {
    var error = 0
    for element in s {
        if element > "m" {
            error += 1
        }
    }
    return "\(error)/\(s.count)"
}

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.005 (0.007) seconds

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Test Example", testExample),
    ]

    func testExample() {
        XCTAssertEqual(printerError("aaabbbbhaijjjm"), "0/14")
        XCTAssertEqual(printerError("aaaxbbbbyyhwawiwjjjwwm"), "8/22")
        XCTAssertEqual(printerError("zzxxyywwvv"), "10/10")
    }
}

SolutionTest.defaultTestSuite.run()
