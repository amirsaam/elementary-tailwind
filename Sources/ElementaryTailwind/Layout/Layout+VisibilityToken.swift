import Elementary

/// Controls the CSS `visibility` property.
public enum TWTVisibility: String, TWToken, Sendable, Equatable, CaseIterable {
    case visible = "visible"
    case invisible = "invisible"
    case collapse = "collapse"
}
