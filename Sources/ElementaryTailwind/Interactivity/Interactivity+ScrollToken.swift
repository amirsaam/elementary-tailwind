import Elementary

/// Controls the CSS `scroll-behavior` property.
public enum TWTScrollBehavior: String, TWToken, Sendable, Equatable, CaseIterable {
    case auto = "scroll-auto"
    case smooth = "scroll-smooth"
}

/// Controls the CSS `scroll-snap-align` property.
public enum TWTScrollSnapAlign: String, TWToken, Sendable, Equatable, CaseIterable {
    case none = "snap-none"
    case start = "snap-start"
    case end = "snap-end"
    case center = "snap-center"
}

/// Controls the CSS `scroll-snap-type` property.
public enum TWTScrollSnapType: String, TWToken, Sendable, Equatable, CaseIterable {
    case none = "snap-none"
    case x = "snap-x"
    case y = "snap-y"
    case both = "snap-both"
}
