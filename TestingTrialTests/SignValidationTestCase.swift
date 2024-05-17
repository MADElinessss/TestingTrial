//
//  SignValidationTestCase.swift
//  TestingTrialTests
//
//  Created by Madeline on 5/17/24.
//

import XCTest
@testable import TestingTrial

final class SignValidationTestCase: XCTestCase {
    
    // struct Validator
    var sut: Validator!
    
    // 성공 케이스, 실패 케이스 미리 선언
    let validUser = User(email: "jyseen@naver.com", password: "123123", check: "123123")
    let invalidUser = User(email: "jyseen", password: "1", check: "1")

    override func setUpWithError() throws {
        sut = Validator()
    }

    override func tearDownWithError() throws {
        sut = nil
    }

    func testValidator_ValidationEmail_ReturnTrue() throws {
        let valid = sut.isValidEmail(email: validUser.email)
        // aseert문은 1개여야 해.
        XCTAssertTrue(valid, "error: @ 없거나 6글자 미만")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
