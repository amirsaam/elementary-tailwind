import Elementary

/// Controls the CSS `pointer-events` property.
public enum TWTPointerEvents: String, TWToken, Sendable, Equatable, CaseIterable {
    case none = "pointer-events-none"
    case auto = "pointer-events-auto"
}

/// Controls the CSS `resize` property.
public enum TWTResize: String, TWToken, Sendable, Equatable, CaseIterable {
    case none = "resize-none"
    case y = "resize-y"
    case x = "resize-x"
    case both = "resize"
}

/// Controls the CSS `user-select` property.
public enum TWTUserSelect: String, TWToken, Sendable, Equatable, CaseIterable {
    case none = "select-none"
    case text = "select-text"
    case all = "select-all"
    case auto = "select-auto"
}

/// Controls the CSS `will-change` property.
public enum TWTWillChange: String, TWToken, Sendable, Equatable, CaseIterable {
    case auto = "will-change-auto"
    case scrollPosition = "will-change-scroll-position"
    case contents = "will-change-contents"
    case transform = "will-change-transform"
}
