import Foundation

func diamond(_ size: Int) -> String? {
    if size % 2 == 0 || size < 1 { return nil }

    var count = (size / 2)
    var row = [String(repeating: " ", count: count) + "*\n"]

    for i in 1...size {
        if i % 2 == 0 {
            count -= 1
            row.append(String(repeating: " ", count: count) + String(repeating: "*", count: i + 1) + "\n")
        }
    }

    for i in (1...size).reversed() {
        if i % 2 == 0 {
            count += 1
            row.append(String(repeating: " ", count: count) + String(repeating: "*", count: i - 1) + "\n")
        }
    }
    let diamond = row.reduce("", +)

  return diamond
}

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.282 (0.285) seconds

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Test Example", testExample),
    ]

    func testExample() {
        XCTAssertEqual(diamond(3), " *\n***\n *\n")
        XCTAssertEqual(diamond(5), "  *\n ***\n*****\n ***\n  *\n")
        XCTAssertEqual(diamond(2), nil)
        XCTAssertEqual(diamond(-3), nil)
        XCTAssertEqual(diamond(0), nil)
    }
}

SolutionTest.defaultTestSuite.run()
