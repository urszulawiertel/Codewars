import Foundation

func findDeletedNumber(_ array: [Int], _ mixArray: [Int]) -> Int {
    let diff = Set(array).symmetricDifference(Set(mixArray))
    guard let deletedItem = diff.first else { return 0 }

    return deletedItem
}

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.010 (0.014) seconds

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Test Example", testExample),
    ]

    func testExample() {
        XCTAssertEqual(findDeletedNumber([1,2,3,4,5,6,7,8,9],[3,2,4,6,7,8,1,9]), 5)
    }
}

SolutionTest.defaultTestSuite.run()
