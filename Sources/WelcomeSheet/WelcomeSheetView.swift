//
//  File.swift
//  
//
//  Created by Jakub Florek on 27/11/2021.
//

import SwiftUI

struct WelcomeSheetView: View {
    var pages: [WelcomeSheetPage]

    var body: some View {
        NavigationView {
            WelcomeSheetPageView(page: pages[0])
                .navigationBarHidden(true)
        }
    }
}