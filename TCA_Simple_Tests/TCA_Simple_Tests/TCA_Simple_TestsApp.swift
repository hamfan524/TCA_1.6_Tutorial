//
//  TCA_Simple_TestsApp.swift
//  TCA_Simple_Tests
//
//  Created by 최동호 on 1/13/24.
//

import ComposableArchitecture
import SwiftUI

@main
struct TCA_Simple_TestsApp: App {
    static let store = Store(initialState: AppFeature.State()) {
        AppFeature()
    }
    
    var body: some Scene {
        WindowGroup {
            AppView(store: TCA_Simple_TestsApp.store)
        }
    }
}
