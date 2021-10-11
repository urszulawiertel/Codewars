import Foundation

func multi_table(_ number: Int) -> String {
    var table = ""
    for num in 1...10 {
        table.append("\(num) * \(number) = \(num * number)\n")
    }
    return table.trimmingCharacters(in: .newlines)
}

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.005 (0.199) seconds

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Tests Example", testsExample),
    ]

    func testsExample() {
        XCTAssertEqual(multi_table(5),"1 * 5 = 5\n2 * 5 = 10\n3 * 5 = 15\n4 * 5 = 20\n5 * 5 = 25\n6 * 5 = 30\n7 * 5 = 35\n8 * 5 = 40\n9 * 5 = 45\n10 * 5 = 50")
        XCTAssertEqual(multi_table(1), "1 * 1 = 1\n2 * 1 = 2\n3 * 1 = 3\n4 * 1 = 4\n5 * 1 = 5\n6 * 1 = 6\n7 * 1 = 7\n8 * 1 = 8\n9 * 1 = 9\n10 * 1 = 10")
    }
}

SolutionTest.defaultTestSuite.run()
