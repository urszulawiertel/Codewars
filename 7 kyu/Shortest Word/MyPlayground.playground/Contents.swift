import Foundation

func find_short(_ str: String) -> Int {
  let array = str.components(separatedBy: " ")
  let letterCount = array.map {$0.count}
  let shortestWord = letterCount.min() ?? 0

  return shortestWord
}

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.214 (0.217) seconds

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Test Example", testExample),
    ]

    func testExample() {
        XCTAssertEqual(3, find_short("bitcoin take over the world maybe who knows perhaps"))
        XCTAssertEqual(3, find_short("lets talk about javascript the best language"))
        XCTAssertEqual(1, find_short("i want to travel the world writing code one day"))
        XCTAssertEqual(2, find_short("Lets all go on holiday somewhere very cold"))
        XCTAssertEqual(2, find_short("Let's travel abroad shall we"))
    }
}

SolutionTest.defaultTestSuite.run()
