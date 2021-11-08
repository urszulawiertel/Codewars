import Foundation

func replaceAll<T: Equatable>(array: [T], old: T, new: T) -> [T] {
    var sequence = array
    for (index, element) in sequence.enumerated() {
        if element == old {
            sequence.remove(at: index)
            sequence.insert(new, at: index)
        }
    }
    return sequence
}

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.008 (0.010) seconds

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Example tests", testExample),
    ]

    func testExample() {
        XCTAssertEqual(replaceAll(array: [1,2,2], old: 1, new: 2), [2,2,2])
        XCTAssertEqual(replaceAll(array: ["ooh", "la", "la"], old: "la", new: "baby"), ["ooh", "baby", "baby"])
    }
}

SolutionTest.defaultTestSuite.run()
