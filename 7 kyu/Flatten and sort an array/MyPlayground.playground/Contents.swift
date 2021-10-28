import Foundation

func flattenAndSort<T: Comparable>(_ arr: [[T]]) -> [T] {
    let flattenedArray = arr.reduce([]) {$0 + $1}
    return flattenedArray.sorted()
}

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.214 (0.217) seconds

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Basic Tests", testBasics),
   ]

    func testBasics() {
      XCTAssertEqual(flattenAndSort([[Int]]()), [])
      XCTAssertEqual(flattenAndSort([[Int](), []]), [])
      XCTAssertEqual(flattenAndSort([[], [1]]), [1])
      XCTAssertEqual(flattenAndSort([[], [], [], [2], [], [1]]), [1, 2])
      XCTAssertEqual(flattenAndSort([[3, 2, 1], [7, 9, 8], [6, 4, 5]]), [1, 2, 3, 4, 5, 6, 7, 8, 9])
      XCTAssertEqual(flattenAndSort([[1, 3, 5], [100], [2, 4, 6]]), [1, 2, 3, 4, 5, 6, 100])
      XCTAssertEqual(flattenAndSort([[111, 999], [222], [333], [444], [888], [777], [666], [555]]), [111, 222, 333, 444, 555, 666, 777, 888, 999])
    }

}

SolutionTest.defaultTestSuite.run()
