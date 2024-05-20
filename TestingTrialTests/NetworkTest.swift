//
//  NetworkTest.swift
//  TestingTrialTests
//
//  Created by Madeline on 5/20/24.
//

import XCTest
@testable import TestingTrial

final class NetworkTest: XCTestCase {
    
    var sut: NetworkManager!

    override func setUpWithError() throws {
        sut = NetworkManager.shared
    }

    override func tearDownWithError() throws {
        sut = nil
    }

    // 네트워크 테스트
    // 로또 번호는 항상 1~45번일거야.
    // fetchLotto response 중 bonsNo가 1~45 안에 있어야 성공하는 케이스 => 테스트로 만들기
    func testNetworkManager_ValidBonusNo_ReturnSuccess() throws {
        print("1")
        
        // 비동기 테스트 1) expectation
        let promise = expectation(description: "Lotto Number Completion Handler")
        // 뭘 하려고 하냐면!을 적으면 됨
        
        sut.fetchLotto { lotto in
            print("2")
            XCTAssertLessThanOrEqual(lotto.bnusNo, 45, "45보다 작아야됨!")
            XCTAssertGreaterThanOrEqual(lotto.bnusNo, 1, "1보다 커야됨!")
            
            // 약속은 이걸로 만족된다!
            // 비동기 테스트 3) fulfill
            promise.fulfill()
        }
        
        // 어이 바로 끝내지말고 좀 기다려보는게 어떤가
        // 비동기 테스트 2) wait -> 그냥 몇초동안 기다리는 것(타임아웃==실패)
        wait(for: [promise], timeout: 5) // 5초동안 우리가 약속한걸 기다려~
        
        print("3")
    }
    // unit test는 동기 테스트에 최적화되어있음
    // 비동기는 기다리지 않아 클로저는 나중에 실행해!!

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
