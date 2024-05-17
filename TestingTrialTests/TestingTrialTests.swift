//
//  TestingTrialTests.swift
//  TestingTrialTests
//
//  Created by Madeline on 5/16/24.
//

import XCTest
@testable import TestingTrial // 만능임

final class TestingTrialTests: XCTestCase {
    
    // MARK: sut: system under test의 약자
    // 시스템 하려는 대상을 말함
    
    // 코드 베이스:
    // var sut = ViewController()
    
    // 스토리보드 베이스:
    var sut: ViewController!
    

    override func setUpWithError() throws {
        print(#function)
        // test 시작
        // 스토리보드 베이스:
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        sut = vc
        sut.loadViewIfNeeded()
    }

    override func tearDownWithError() throws {
        print(#function)
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        // 초기화
        sut = nil
    }

    func testExample() throws {
        print(#function)
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }
    
    // 메서드 이런식으로 지음
    // 이메일 유효성 검사 테스트1 -> true 테스트
    func testViewController_ValidEmail_ReturnTrue() throws {
        print(#function)
        // 이번엔 유효성 검사 함수 3개 test
        sut.emailTextField.text = "jyseen@naver.com"
        XCTAssertTrue(sut.isValidEmail(), "error: @ 없거나 6글자 미만")
        
    }
    
    // 이메일 유효성 검사 테스트2 -> false 테스트(실패해야 됨)
    func testViewController_ValidEmail_ReturnFalse() throws {
        print(#function)
        // 이번엔 유효성 검사 함수 3개 test
        sut.emailTextField.text = "jyseennaver.com"
        XCTAssertFalse(sut.isValidEmail(), "error: @ 없거나 6글자 미만")
    }
    // nil test
    func testViewController_Testing_ReturnNil() throws {
        print(#function)
        sut.emailTextField = nil
        XCTAssertNil(sut.emailTextField, "nil")
    }

    func testLaunchPerformance() throws {
        print(#function)
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }

    func testPerformanceExample() throws {
        print(#function)
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
