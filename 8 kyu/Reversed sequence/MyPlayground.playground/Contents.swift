import UIKit

func reverseSeq(n: Int) -> [Int] {
    var array: [Int] = []
    for i in 1...n {
        array.append(i)
    }
    array.reverse()
    return array
}

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.008 (0.011) seconds

class SolutionTest: XCTestCase {

    static var allTests = [
        ("Test n 5", testN5),
    ]

    func testN5() {
        XCTAssertEqual( [5,4,3,2,1], reverseSeq(n: 5))
    }

}

SolutionTest.defaultTestSuite.run()
