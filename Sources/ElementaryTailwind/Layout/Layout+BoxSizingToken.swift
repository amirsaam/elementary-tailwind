import Elementary

/// Controls the CSS `box-sizing` property.
public enum TWTBoxSizing: String, TWToken, Sendable, Equatable, CaseIterable {
    case border = "box-border"
    case content = "box-content"
}
