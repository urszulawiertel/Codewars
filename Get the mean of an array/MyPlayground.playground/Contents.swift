import Foundation

func getAverage(_ marks: [Int]) -> Int {
    let sum = marks.reduce(0, +)
    let count = marks.count
    return sum / count
}

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.005 (0.007) seconds

final class SolutionTest: XCTestCase {
    static var allTests = [
        ("Simple tests", testExample),
    ]

    func testExample() {
      XCTAssertEqual(getAverage([2,2,2,2]),2);
      XCTAssertEqual(getAverage([1,2,3,4,5,]),3);
      XCTAssertEqual(getAverage([1,1,1,1,1,1,1,2]),1);
    }
}

SolutionTest.defaultTestSuite.run()
