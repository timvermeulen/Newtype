import XCTest
@testable import Newtype

final class NewtypeTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Newtype().text, "Hello, World!")
    }


    static var allTests = [
        ("testExample", testExample),
    ]
}
