import Elementary

/// Controls the CSS `word-break` and `overflow-wrap` properties.
public enum TWTWordBreak: String, TWToken, Sendable, Equatable, CaseIterable {
    case normal = "break-normal"
    case words = "break-words"
    case all = "break-all"
    case keep = "break-keep"
}
