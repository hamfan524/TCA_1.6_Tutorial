//
//  AppFeatureTests.swift
//  TCA_Simple_TestsTests
//
//  Created by 최동호 on 3/24/24.
//

import ComposableArchitecture
import XCTest
@testable import TCA_Simple_Tests

@MainActor
final class AppFeatureTests: XCTestCase {
    func testIncrementInFirstTab() async {
        let store = TestStore(initialState: AppFeature.State()) {
            AppFeature()
        }
        
        await store.send(\.tab1.incrementButtonTapped) {
            $0.tab1.count = 1
        }
    }
    
}
