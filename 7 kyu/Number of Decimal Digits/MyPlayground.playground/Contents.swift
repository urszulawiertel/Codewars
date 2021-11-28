import Foundation

func digits(num n: UInt64) -> Int {
  return "\(n)".count
}

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.005 (0.008) seconds

class SampleTest: XCTestCase {
  static var all = [
    ("Digits", testExample),
  ]

  func testExample() {
    XCTAssertEqual(1,  digits(num: 5))
    XCTAssertEqual(5,  digits(num: 12345))
    XCTAssertEqual(10, digits(num: 9876543210))
  }
}

SampleTest.defaultTestSuite.run()
