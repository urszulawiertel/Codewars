import Foundation

func sumOfPositives (_ numbers: [Int] ) -> Int {
    if numbers.isEmpty { return 0 }

    var sum = 0
    for number in numbers {
        if number > 0 {
            sum += number
        }
    }
    return sum
}

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.004 (0.007) seconds

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Test Example", testExample),
    ]

    func testExample() {
        XCTAssertEqual(sumOfPositives([1,2,3,4,5]), 15);
        XCTAssertEqual(sumOfPositives([1,-2,3,4,5]), 13);
        XCTAssertEqual(sumOfPositives([-1,2,3,4,-5]), 9);
    }
}

SolutionTest.defaultTestSuite.run()
