import XCTest

import SwiftTestPackageTests

var tests = [XCTestCaseEntry]()
tests += SwiftTestPackageTests.allTests()
XCTMain(tests)
