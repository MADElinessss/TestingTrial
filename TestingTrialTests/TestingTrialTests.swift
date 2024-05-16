//
//  TestingTrialTests.swift
//  TestingTrialTests
//
//  Created by Madeline on 5/16/24.
//

import XCTest
@testable import TestingTrial // 만능임

final class TestingTrialTests: XCTestCase {
    
    // sut: system under test의 약자
    // 시스템 하려는 대상을 말함
    var sut = ViewController()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }
    
    // 메서드 이런식으로 지음
    // 이메일 유효성 검사 테스트1 -> true 테스트
    func testViewController_ValidEmail_ReturnTrue() throws {
        // 이번엔 유효성 검사 함수 3개 test
        sut.emailTextField.text = "jyseen@naver.com"
        XCTAssertTrue(sut.isValidEmail(), "error: @ 없거나 6글자 미만")
    }
    
    // 이메일 유효성 검사 테스트2 -> false 테스트(실패해야 됨)
    func testViewController_ValidEmail_ReturnFalse() throws {
        // 이번엔 유효성 검사 함수 3개 test
        sut.emailTextField.text = "jyseennaver.com"
        XCTAssertFalse(sut.isValidEmail(), "error: @ 없거나 6글자 미만")
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
