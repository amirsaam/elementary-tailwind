import Elementary

/// Controls the CSS `isolation` property.
public enum TWTIsolation: String, TWToken, Sendable, Equatable, CaseIterable {
    case auto = "isolate"
    case isolation = "isolation-auto"
}
