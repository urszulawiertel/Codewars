func take(_ arr: [Int], _ n: Int) -> [Int] {
    if arr.isEmpty {
        return []
    }
    var newArr = [Int]()
    var maxSubscript = n
    if arr.count < n {
        maxSubscript = arr.count
    }
    for i in 0..<maxSubscript {
        newArr.append(arr[i])
    }
    return newArr
}

import XCTest

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Basic Tests", testBasics),
    ]

    func testBasics() {
        XCTAssertEqual(take([0, 1, 2, 3, 5, 8, 13], 3), [0, 1, 2])
        XCTAssertEqual(take([0, 1, 2, 3, 5, 8, 13], 0), [])
        XCTAssertEqual(take([], 3), [])
    }
}

SolutionTest.defaultTestSuite.run()
