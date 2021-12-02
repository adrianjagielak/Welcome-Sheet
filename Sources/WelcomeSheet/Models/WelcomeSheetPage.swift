//
//  WelcomeSheetPage.swift
//  
//
//  Created by Jakub Florek on 27/11/2021.
//

import SwiftUI

/// A type that describes welcome sheet page's content.
public struct WelcomeSheetPage: Identifiable {
    public var id = UUID()
    
    
    /// Large title displayed on the top.
    public var title: String
    /// Rows of content inside a body.
    public var rows: [WelcomeSheetPageRow]
    
    
    /// Title for a main button. Set to "Continue" by default.
    public var mainButtonTitle: String
    /// Color used for buttons. When set to nil, uses default accent color.
    public var accentColor: Color?
    
    
    /// Specifies whether to show an optional button.
    public var isShowingOptionalButton = false
    /// Title for an optional button.
    public var optionalButtonTitle: String?
    /// URL to open for an optional button.
    public var optionalButtonURL: URL?
    
    
    /// Creates welcome sheet page with given title, rows and main button title.
    public init(title: String, rows: [WelcomeSheetPageRow], mainButtonTitle: String? = nil) {
        self.title = title
        self.rows = rows
        self.mainButtonTitle = mainButtonTitle ?? "Continue"
    }
    
    /// Creates welcome sheet page with given title, rows and main button title. Tints buttons with specified color.
    public init(title: String, rows: [WelcomeSheetPageRow], mainButtonTitle: String? = nil, accentColor: Color) {
        self.init(title: title, rows: rows, mainButtonTitle: mainButtonTitle)
        self.accentColor = accentColor
    }
    
    /// Creates welcome sheet page with given title, rows and main button title. Sets optional button with entered title and URL to open.
    public init(title: String, rows: [WelcomeSheetPageRow], mainButtonTitle: String? = nil, optionalButtonTitle: String, optionalButtonURL: URL?) {
        self.init(title: title, rows: rows, mainButtonTitle: mainButtonTitle)
        self.isShowingOptionalButton = true
        self.optionalButtonTitle = optionalButtonTitle
        self.optionalButtonURL = optionalButtonURL
    }
    
    /// Creates welcome sheet page with given title, rows and main button title. Tints buttons with specified color. Sets optional button with entered title and URL to open.
    public init(title: String, rows: [WelcomeSheetPageRow], mainButtonTitle: String? = nil, accentColor: Color, optionalButtonTitle: String, optionalButtonURL: URL?) {
        self.init(title: title, rows: rows, mainButtonTitle: mainButtonTitle)
        self.accentColor = accentColor
        self.isShowingOptionalButton = true
        self.optionalButtonTitle = optionalButtonTitle
        self.optionalButtonURL = optionalButtonURL
    }
}
