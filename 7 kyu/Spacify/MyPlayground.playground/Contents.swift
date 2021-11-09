import Foundation

func spacify(_ str: String) -> String {
    return str.map { String($0) }.joined(separator: " ")
}

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.005 (0.007) seconds

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Basic Tests", testBasics),
    ]

    func testBasics() {
        XCTAssertEqual(spacify("hello world"), "h e l l o   w o r l d")
        XCTAssertEqual(spacify("12345"),"1 2 3 4 5")
        XCTAssertEqual(spacify(""), "")
        XCTAssertEqual(spacify("a"),"a")
        XCTAssertEqual(spacify("Pippi"),"P i p p i")
    }

}

SolutionTest.defaultTestSuite.run()
