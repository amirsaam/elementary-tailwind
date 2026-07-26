import Elementary

// MARK: - TransitionProperty

/// Controls the CSS `transition-property` property.
public enum TWTTransitionProperty: String, TWToken, Sendable, Equatable, CaseIterable {
    case none = "transition-none"
    case all = "transition"
    case colors = "transition-colors"
    case opacity = "transition-opacity"
    case shadow = "transition-shadow"
    case transform = "transition-transform"
}

// MARK: - TransitionDuration

/// Controls the CSS `transition-duration` property.
public enum TWTTransitionDuration: TWToken, Sendable, Equatable {
    case ms(Int)

    public var rawValue: String {
        switch self {
        case .ms(let n): "duration-\(n)"
        }
    }
}

// MARK: - TransitionTimingFunction

/// Controls the CSS `transition-timing-function` property.
public enum TWTTransitionTimingFunction: String, TWToken, Sendable, Equatable, CaseIterable {
    case linear = "ease-linear"
    case easeIn = "ease-in"
    case easeOut = "ease-out"
    case easeInOut = "ease-in-out"
}

// MARK: - TransitionDelay

/// Controls the CSS `transition-delay` property.
public enum TWTTransitionDelay: TWToken, Sendable, Equatable {
    case ms(Int)

    public var rawValue: String {
        switch self {
        case .ms(let n): "delay-\(n)"
        }
    }
}

// MARK: - TransitionBehavior

/// Controls the CSS `transition-behavior` property.
public enum TWTTransitionBehavior: String, TWToken, Sendable, Equatable, CaseIterable {
    case normal = "transition-normal"
    case allowDiscrete = "transition-allow-discrete"
}
