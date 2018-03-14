import XCTest

import NewtypeTests

var tests = [XCTestCaseEntry]()
tests += NewtypeTests.allTests()
XCTMain(tests)