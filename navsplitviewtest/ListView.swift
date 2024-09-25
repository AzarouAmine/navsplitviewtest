//
//  ListView.swift
//  navigationsplitviewtest
//
//  Created by Mohammed Amine AZAROU on 24/09/2024.
//

import SwiftUI

struct ListView: View {
    
    @State var showDetails = false
    var body: some View {
        List {
            Text("Item 1")
            Text("Item 2")
            Text("Item 3")
            Button("Go To Details View") {
                self.showDetails = true
            }
        }
        .ignoresSafeArea(.all, edges: .bottom)
        .navigationDestination(isPresented: $showDetails) {
            DetailsView()
                .navigationBarHidden(true)
        }
    }
}
