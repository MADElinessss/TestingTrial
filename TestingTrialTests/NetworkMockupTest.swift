//
//  NetworkMockupTest.swift
//  TestingTrialTests
//
//  Created by Madeline on 5/20/24.
//

import XCTest
@testable import TestingTrial

// protocol로 분리한다!
// 가짜 json으로 테스트하는겨
// 네트워크 상황과는 분리해서 코드만 테스트하는거지
// test double: 지금처럼 목업 만드는거 통칭(목업, 더미 데이터)
final class NetworkMockupTest: XCTestCase {
    
    var sut: NetworkProvider!

    override func setUpWithError() throws {
    }

    override func tearDownWithError() throws {
    }

    func testExample() throws {
        sut.fetchLotto { lotto in
            <#code#>
        }
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
