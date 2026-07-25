import Elementary

/// Controls the CSS `transition-behavior` property.
public enum TWTTransitionBehavior: String, TWToken, Sendable, Equatable, CaseIterable {
    case normal = "transition-normal"
    case allowDiscrete = "transition-allow-discrete"
}
