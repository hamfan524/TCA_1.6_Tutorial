//
//  AppView.swift
//  TCA_Simple_Tests
//
//  Created by 최동호 on 1/14/24.
//
import ComposableArchitecture
import SwiftUI

struct AppView: View {
    let store: StoreOf<AppFeature>
    
    var body: some View {
        TabView {
            CounterView(store: store.scope(state: \.tab1, action: \.tab1))
                .tabItem {
                    Text("Counter 1")
                }
            
            CounterView(store: store.scope(state: \.tab2, action: \.tab2))
                .tabItem {
                    Text("Counter 2")
                }
            ContactsView(store: store.scope(state: \.tab3, action: \.tab3))
                .tabItem {
                    Text("Contact")
                }
        }
    }
}

#Preview {
    AppView(
        store: Store(initialState: AppFeature.State()) {
            AppFeature()
        }
    )
}




//struct AppView: View {
//    let store1: StoreOf<CounterFeature>
//    let store2: StoreOf<CounterFeature>
//
//    var body: some View {
//        TabView {
//            CounterView(store: store1)
//                .tabItem {
//                    Text("Counter 1")
//                }
//
//            CounterView(store: store2)
//                .tabItem {
//                    Text("Counter 2")
//                }
//        }
//    }
//}
