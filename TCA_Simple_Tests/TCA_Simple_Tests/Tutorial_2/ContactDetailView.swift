//
//  ContactDetailView.swift
//  TCA_Simple_Tests
//
//  Created by 최동호 on 1/15/24.
//

import ComposableArchitecture
import SwiftUI

struct ContactDetailView: View {
    let store: StoreOf<ContactDetailFeature>
    
    var body: some View {
        WithViewStore(self.store, observe: { $0 }) { viewStore in
            Form {
                Button("Delete") {
                    viewStore.send(.deleteButtonTapped)
                }
            }
            .navigationBarTitle(Text(viewStore.contact.name))
        }
        .alert(store: self.store.scope(state: \.$alert, action: \.alert))
    }
}


#Preview {
    NavigationStack {
        ContactDetailView(
            store: Store(
                initialState: ContactDetailFeature.State(
                    contact: Contact(id: UUID(), name: "Blob")
                )
            ) {
                ContactDetailFeature()
            }
        )
    }
}
