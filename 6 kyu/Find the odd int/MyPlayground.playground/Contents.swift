import Foundation

func findIt(_ seq: [Int]) -> Int {
    var counts: [Int: Int] = [:]
    seq.forEach { counts[$0, default: 0] += 1}
    for (key, value) in counts {
        if value % 2 != 0 {
            return key
        }
    }
    return 0
}

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.009 (0.012) seconds

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Basic tests", testExample),
    ]

    func testExample() {
        let testCases = [
            ([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5], 5),
            ([1,1,2,-2,5,2,4,4,-1,-2,5], -1),
            ([20,1,1,2,2,3,3,5,5,4,20,4,5], 5),
            ([10], 10),
            ([1,1,1,1,1,1,10,1,1,1,1], 10),
        ]
        for testCase in testCases {
            let actual = findIt(testCase.0);
            let expected = testCase.1;
            XCTAssertEqual(actual, expected, "\nInvalid answer for input array: \(testCase.0)\nExpected: \(expected)\nActual: \(actual)")
        }
    }
}

SolutionTest.defaultTestSuite.run()
