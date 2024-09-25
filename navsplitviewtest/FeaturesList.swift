//
//  FeaturesList.swift
//  navsplitviewtest
//
//  Created by Mohammed Amine AZAROU on 25/09/2024.
//

import SwiftUI

struct FeaturesList: View {
    @State var shouldNavigate = false
    var body: some View {
        List {
            Button("Feature 1") {
                self.shouldNavigate = true
            }
            Button("Feature 2") {
                self.shouldNavigate = true
            }
        }
        .navigationDestination(isPresented: $shouldNavigate) {
            SplitView()
        }
    }
}

#Preview {
    FeaturesList()
}
