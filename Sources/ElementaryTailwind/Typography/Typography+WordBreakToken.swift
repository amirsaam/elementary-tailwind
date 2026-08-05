import Elementary

/// Controls the CSS `word-break` property.
public enum TWTWordBreak: String, TWToken, Sendable, Equatable, CaseIterable {
    case normal = "break-normal"
    case all = "break-all"
    case keep = "break-keep"
}

/// Controls the CSS `overflow-wrap` property.
public enum TWTOverflowWrap: String, TWToken, Sendable, Equatable, CaseIterable {
    case normal = "wrap-normal"
    case breakWord = "wrap-break-word"
    case anywhere = "wrap-anywhere"
}
