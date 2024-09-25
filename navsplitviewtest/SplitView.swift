//
//  SplitView.swift
//  navsplitviewtest
//
//  Created by Mohammed Amine AZAROU on 25/09/2024.
//

import SwiftUI

struct SplitView: View {
    var body: some View {
        NavigationSplitView(
            sidebar: {
                ListView()
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
            },
            detail: {
                DetailsView()
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
            }
        )
        .navigationBarHidden(true)
        .navigationSplitViewStyle(.automatic)
    }
}

#Preview {
    SplitView()
}
