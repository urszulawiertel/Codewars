import Foundation

func duplicateEncode(_ word: String) -> String {
    var items: [String] = []
    let lowercasedWord = word.lowercased()
    let counts = lowercasedWord.reduce(into: [:]) { counts, word in counts[word, default: 0] += 1 }

        for char in lowercasedWord {
            for (key, value) in counts {
            if char == key {
                if value > 1 {
                    items.append(")")
                } else {
                    items.append("(")
                }
            }
        }
    }
    return items.joined()
}

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.114 (0.117) seconds

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Basic Tests", testBasics),
    ]

    func testBasics() {
        XCTAssertEqual(duplicateEncode("din"), "(((")
        XCTAssertEqual(duplicateEncode("recede"), "()()()")
        XCTAssertEqual(duplicateEncode("Success"), ")())())", "should ignore case")
        XCTAssertEqual(duplicateEncode("(( @"), "))((")
    }

}

SolutionTest.defaultTestSuite.run()
