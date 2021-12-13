import Foundation

func fizzBuzzCuckooClock(_ time: String) -> String {
    let hour = Int(time.split(separator: ":")[0]) ?? 0
    let minute = Int(time.split(separator: ":")[1]) ?? 0

    if minute == 30 {
        return "Cuckoo"
    } else if minute == 0 {
        if hour == 0 || hour == 12 {
            return String(repeating: "Cuckoo ", count: 12).trimmingCharacters(in: .whitespaces)
        }
        return String(repeating: "Cuckoo ", count: hour % 12).trimmingCharacters(in: .whitespaces)
    }

    if minute.isMultiple(of: 3) && minute.isMultiple(of: 5) {
        return "Fizz Buzz"

    } else if minute.isMultiple(of: 3) {
        return "Fizz"

    } else if minute.isMultiple(of: 5) {
        return "Buzz"
    }
    return "tick"
}

fizzBuzzCuckooClock("12:00")

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.003 (0.007) seconds

class ExampleTest: XCTestCase {
    static let basicTests = [
        ("13:34", "tick"),
        ("21:00", "Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo"),
        ("11:15", "Fizz Buzz"),
        ("03:03", "Fizz"),
        ("14:30", "Cuckoo"),
        ("08:55", "Buzz"),
        ("00:00", "Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo"),
        ("12:00", "Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo")
    ]
    static var allTests = [
        ("Basic Tests", testExample),
    ]

    func testExample() {
        for test in ExampleTest.basicTests {
            XCTAssertEqual(fizzBuzzCuckooClock(test.0), test.1, "Testing with time \(test.0)")
        }
    }
}

ExampleTest.defaultTestSuite.run()
