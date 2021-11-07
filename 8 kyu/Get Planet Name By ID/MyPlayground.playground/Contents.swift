import Foundation

func getPlanetName(_ id: Int) -> String {
    var name: String
    switch id {
    case 1:
        name = "Mercury"
    case 2:
        name = "Venus"
    case 3:
        name = "Earth"
    case 4:
        name = "Mars"
    case 5:
        name = "Jupiter"
    case 6:
        name = "Saturn"
    case 7:
        name = "Uranus"
    case 8:
        name = "Neptune"
    default:
        name = ""
    }
    return name
}

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.005 (0.207) seconds

final class SolutionTest: XCTestCase {
    static var allTests = [
        ("Simple tests", testExample),
    ]

    func testExample() {
        XCTAssertEqual(getPlanetName(2),"Venus")
        XCTAssertEqual(getPlanetName(5),"Jupiter")
        XCTAssertEqual(getPlanetName(3),"Earth")
    }
}

SolutionTest.defaultTestSuite.run()
