import Elementary

/// Controls the CSS `word-break` property.
public enum TWTWordBreak: String, TWToken, Sendable, Equatable, CaseIterable {
    case normal = "break-normal"
    case all = "break-all"
    case keep = "break-keep"
}
