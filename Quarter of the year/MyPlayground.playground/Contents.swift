import UIKit

func quarter(of month: Int) -> Int {
    var quarter = Double(month) / 3.0
    quarter.round(.up)
    return Int(quarter)
}


import XCTest
// XCTest Spec Example:
// Executed 1 test, with 0 failures (0 unexpected) in 0.007 (0.009) seconds
class SolutionTest: XCTestCase {

    func test() {
        let testCases = [
            (3, 1),
            (8, 3),
            (11, 4),
        ]

        for testCase in testCases {
            XCTAssertEqual(quarter(of: testCase.0), testCase.1)
        }
    }
}

SolutionTest.defaultTestSuite.run()
