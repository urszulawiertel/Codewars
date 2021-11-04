import Foundation

func warnTheSheep(_ queue: [String]) -> String {
    if queue.last == "wolf" {
        return "Pls go away and stop eating my sheep"
    } else {
        var newQueue = queue
        newQueue.reverse()
        let index = newQueue.firstIndex(of: "wolf") ?? 0
        return "Oi! Sheep number \(index)! You are about to be eaten by a wolf!"
    }
}

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.009 (0.011) seconds

final class SolutionTest: XCTestCase {
    static var allTests = [
        ("Basic Test Cases", testsExample),
    ]

    func testsExample() {
      XCTAssertEqual(warnTheSheep(["sheep", "sheep", "sheep", "sheep", "sheep", "wolf", "sheep", "sheep"]), "Oi! Sheep number 2! You are about to be eaten by a wolf!", "Testing for \(["sheep", "sheep", "sheep", "sheep", "sheep", "wolf", "sheep", "sheep"]).")
      XCTAssertEqual(warnTheSheep(["sheep", "wolf", "sheep", "sheep", "sheep", "sheep", "sheep"]), "Oi! Sheep number 5! You are about to be eaten by a wolf!", "Testing for \(["sheep", "wolf", "sheep", "sheep", "sheep", "sheep", "sheep"]).")
      XCTAssertEqual(warnTheSheep(["wolf", "sheep", "sheep", "sheep", "sheep", "sheep", "sheep"]), "Oi! Sheep number 6! You are about to be eaten by a wolf!", "Testing for \(["sheep", "sheep", "wolf"]).")
      XCTAssertEqual(warnTheSheep(["sheep", "wolf", "sheep"]), "Oi! Sheep number 1! You are about to be eaten by a wolf!", "Testing for \(["sheep", "wolf", "sheep"])")
      XCTAssertEqual(warnTheSheep(["sheep", "sheep", "wolf"]), "Pls go away and stop eating my sheep", "Testing for \(["sheep", "sheep", "wolf"]).")
      XCTAssertEqual(warnTheSheep(["wolf"]), "Pls go away and stop eating my sheep", "Testing for \(["wolf"]).")
    }
}

SolutionTest.defaultTestSuite.run()
