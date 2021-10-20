import Foundation

func sumOfTwoSmallestIntegersIn(_ array: [Int]) -> Int {
    var sortedArray = array.sorted()
    var sumOfTwo = 0

    for _ in 1...2 {
        let removed = sortedArray.removeFirst()
        sumOfTwo += removed
    }

  return sumOfTwo
}

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.214 (0.424) seconds

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Basic Tests", testBasic),
    ]

    func testBasic() {
        XCTAssertEqual(sumOfTwoSmallestIntegersIn([5, 8, 12, 18, 22]), 13)
        XCTAssertEqual(sumOfTwoSmallestIntegersIn([7, 15, 12, 18, 22]), 19)
        XCTAssertEqual(sumOfTwoSmallestIntegersIn([25, 42, 12, 18, 22]), 30)
        XCTAssertEqual(sumOfTwoSmallestIntegersIn([1, 8, 12, 18, 5]), 6)
        XCTAssertEqual(sumOfTwoSmallestIntegersIn([13, 12, 5, 61, 22]), 17)
    }
}

SolutionTest.defaultTestSuite.run()
