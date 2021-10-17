import Foundation

func rowSumOddNumbers(_ row: Int) -> Int {
    var oddNumbers: [Int] = []
    for number in (row * row - row)...(row * row + row - 1) {
        if number % 2 != 0 {
            oddNumbers.append(number)
        }
    }
    return oddNumbers.reduce(0, +)
}

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.640 (0.642) seconds

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Basic Tests", testBasic),
    ]

    func testBasic() {
        XCTAssertEqual(rowSumOddNumbers(1), 1)
        XCTAssertEqual(rowSumOddNumbers(2), 8)
        XCTAssertEqual(rowSumOddNumbers(13), 2197)
        XCTAssertEqual(rowSumOddNumbers(19), 6859)
        XCTAssertEqual(rowSumOddNumbers(41), 68921)
        XCTAssertEqual(rowSumOddNumbers(42), 74088)
        XCTAssertEqual(rowSumOddNumbers(74), 405224)
        XCTAssertEqual(rowSumOddNumbers(86), 636056)
        XCTAssertEqual(rowSumOddNumbers(93), 804357)
        XCTAssertEqual(rowSumOddNumbers(101), 1030301)
    }

}

SolutionTest.defaultTestSuite.run()
