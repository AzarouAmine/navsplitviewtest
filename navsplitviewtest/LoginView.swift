//
//  LoginView.swift
//  navsplitviewtest
//
//  Created by Mohammed Amine AZAROU on 25/09/2024.
//

import SwiftUI

struct LoginView: View {
    @State var loggedIn = false
    var body: some View {
        VStack {
            Button("Login") {
                self.loggedIn = true
            }

        }
        .navigationDestination(isPresented: $loggedIn) {
            FeaturesList()
        }
    }
}

#Preview {
    LoginView()
}
