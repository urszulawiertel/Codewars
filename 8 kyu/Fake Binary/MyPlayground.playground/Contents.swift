import UIKit

func fakeBin(digits: String) -> String {
    var results = ""
    for digit in digits {
        (digit < "5") ? results.append("0") : results.append("1")
    }
    return results
}

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.005 (0.007) seconds

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Basic Tests", testExample),
    ]

    func testExample() {
        XCTAssertEqual(fakeBin(digits: "45385593107843568"), "01011110001100111")
        XCTAssertEqual(fakeBin(digits: "509321967506747"), "101000111101101")
        XCTAssertEqual(fakeBin(digits: "366058562030849490134388085"), "011011110000101010000011011")
        XCTAssertEqual(fakeBin(digits: "15889923"), "01111100")
        XCTAssertEqual(fakeBin(digits: "800857237867"), "100111001111")
        XCTAssertEqual(fakeBin(digits: ""), "")
    }
}

SolutionTest.defaultTestSuite.run()
