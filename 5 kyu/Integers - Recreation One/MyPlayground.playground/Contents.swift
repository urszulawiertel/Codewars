import Foundation

func listSquared(_ m: Int, _ n: Int) -> [(Int, Int)] {

    var result: [(Int, Int)] = []
    for number in m...n {
        var squaredDivisors: [Int] = []
        var numberOfSquares: [Int] = []
        let num = number
        // Find all squared divisors of a number
        for i in 1...num {
            if num % i == 0 {
                squaredDivisors.append(i * i)
            }
        }
        let sumOfSquaredDivisors = squaredDivisors.reduce(0, +)
        let square = sqrt(Double(sumOfSquaredDivisors))
        // check if the sum of number's squared divisors is a square number
        if floor(square) == square {
            numberOfSquares.append(Int(square))
            // if it is then add to results
            if numberOfSquares.count != 0 {
                result.append((number, sumOfSquaredDivisors))
            }
        }
    }
    return result
}

listSquared(1, 250)

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.888 (0.891) seconds

class SolutionTest: XCTestCase {
    static var allTests = [
        ("listSquared", testExample),
    ]

    func testing(_ m: Int, _ n: Int, _ expected: [(Int, Int)]) {
        let ans  = listSquared(m, n)
        if ans.count == expected.count {
            for i in 0..<expected.count {
                XCTAssertTrue(ans[i] == expected[i], "Actual and Expected don't have same value at index \(i) -> expected \(expected[i])")
            }
        }
        else {XCTAssertEqual(ans.count, expected.count, "Actual and Expected don't have same length")}
    }

    func testExample() {
        testing(1, 250, [(1, 1), (42, 2500), (246, 84100)])
        testing(1, 250, [(1, 1), (42, 2500), (246, 84100)])
        testing(42, 250, [(42, 2500), (246, 84100)])
        testing(250, 500, [(287, 84100)])
        testing(300, 600, [])
    }
}
SolutionTest.defaultTestSuite.run()
