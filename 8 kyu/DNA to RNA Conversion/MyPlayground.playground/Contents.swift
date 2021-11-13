import Foundation

func dnaToRna(_ dna: String) -> String {
    return dna.replacingOccurrences(of: "T", with: "U")
}

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.008 (0.010) seconds

final class SolutionTest: XCTestCase {
    static var allTests = [
        ("Simple tests", testExample),
    ]

    func testExample() {
      XCTAssertEqual(dnaToRna("TTTT"), "UUUU");
      XCTAssertEqual(dnaToRna("GCAT"), "GCAU");
      XCTAssertEqual(dnaToRna("GACCGCCGCC"), "GACCGCCGCC");
    }
}

SolutionTest.defaultTestSuite.run()
