import Elementary

/// Controls the CSS `white-space` property.
public enum TWTWhitespace: String, TWToken, Sendable, Equatable, CaseIterable {
    case normal = "normal"
    case nowrap = "whitespace-nowrap"
    case pre = "whitespace-pre"
    case preLine = "whitespace-pre-line"
    case preWrap = "whitespace-pre-wrap"
    case breakSpaces = "whitespace-break-spaces"
}
