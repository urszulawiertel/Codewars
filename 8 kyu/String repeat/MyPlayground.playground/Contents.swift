import Foundation

func repeatStr(_ n: Int, _ string: String) -> String {
    var newString = ""
    for _ in 0..<n {
    newString += string
  }
  return newString
}

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.005 (0.007) seconds

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Test Repeat", testRepeat),
    ]

    func testRepeat() {
        XCTAssertEqual(repeatStr(5, "Hello"), "HelloHelloHelloHelloHello")
    }
}

SolutionTest.defaultTestSuite.run()
