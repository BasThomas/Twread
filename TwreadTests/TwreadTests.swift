//
//  TwreadTests.swift
//  TwreadTests
//
//  Created by Bas Thomas Broek on 12/10/2017.
//  Copyright © 2017 Bas Thomas Broek. All rights reserved.
//

import XCTest
@testable import Twread

class TwreadTests: XCTestCase {
  
  override func setUp() {
    super.setUp()
  }
  
  override func tearDown() {
    super.tearDown()
  }
  
  func testEncoding() {
    // from https://developer.twitter.com/en/docs/basics/authentication/guides/percent-encoding-parameters.html
    XCTAssertEqual("Ladies + Gentlemen".percentEncoded, "Ladies%20%2B%20Gentlemen")
    XCTAssertEqual("An encoded string!".percentEncoded, "An%20encoded%20string%21")
    XCTAssertEqual("Dogs, Cats & Mice".percentEncoded, "Dogs%2C%20Cats%20%26%20Mice")
    XCTAssertEqual("☃".percentEncoded, "%E2%98%83")
    // from https://developer.twitter.com/en/docs/basics/authentication/guides/authorizing-a-request
    XCTAssertEqual("tnnArxj06cWHq44gCs1OSKk/jLY=".percentEncoded, "tnnArxj06cWHq44gCs1OSKk%2FjLY%3D")
  }
  
  func testNoncePerformance() {
    measure {
      (1...10_000).forEach { _ in
        let _ = String.nonce
      }
    }
  }
}
