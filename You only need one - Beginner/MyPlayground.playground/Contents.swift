import UIKit

func check<T: Equatable>(_ a: [T], _ x: T) -> Bool {
    return a.contains(x)
}

import XCTest

class SampleTests: XCTestCase {

    static let exampleStringTests = [
        (["t", "e", "s", "t"], "e" , true),
        (["what", "a", "great", "kata"], "kat" , false)
    ]

    static let exampleIntTests = [
        ([66, 101], 66, true),
        ([80, 117, 115, 104, 45, 85, 112, 115], 45 , true)
    ]

    static var allTests = [
        ("Example Tests", runExampleTests)
    ]

    func runExampleTests() {
        for test in SampleTests.exampleStringTests {
            XCTAssertEqual(check(test.0, test.1), test.2)
        }
        for test in SampleTests.exampleIntTests {
            XCTAssertEqual(check(test.0, test.1), test.2)
        }
    }
}

SampleTests.defaultTestSuite.run()
