import Elementary

// MARK: - TransitionProperty

/// Controls the CSS `transition-property` property.
/// Accepts a custom value via `.arbitrary(...)` (e.g. `transition-[height]`).
public enum TWTTransitionProperty: TWToken, Sendable, Equatable {
    case none
    case all
    case colors
    case opacity
    case shadow
    case transform
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .none: "transition-none"
        case .all: "transition"
        case .colors: "transition-colors"
        case .opacity: "transition-opacity"
        case .shadow: "transition-shadow"
        case .transform: "transition-transform"
        case .arbitrary(let v): "transition-[\(v)]"
        }
    }
}

// MARK: - TransitionDuration

/// Controls the CSS `transition-duration` property.
public enum TWTTransitionDuration: TWToken, Sendable, Equatable {
    case ms(Int)
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .ms(let n): "duration-\(n)"
        case .arbitrary(let v): "duration-[\(v)]"
        }
    }
}

// MARK: - TransitionTimingFunction

/// Controls the CSS `transition-timing-function` property.
/// Accepts a custom value via `.arbitrary(...)` (e.g. `ease-[cubic-bezier(0.95,0.05,0.795,0.035)]`).
public enum TWTTransitionTimingFunction: TWToken, Sendable, Equatable {
    case linear
    case easeIn
    case easeOut
    case easeInOut
    case initial
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .linear: "ease-linear"
        case .easeIn: "ease-in"
        case .easeOut: "ease-out"
        case .easeInOut: "ease-in-out"
        case .initial: "ease-initial"
        case .arbitrary(let v): "ease-[\(v)]"
        }
    }
}

// MARK: - TransitionDelay

/// Controls the CSS `transition-delay` property.
public enum TWTTransitionDelay: TWToken, Sendable, Equatable {
    case ms(Int)
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .ms(let n): "delay-\(n)"
        case .arbitrary(let v): "delay-[\(v)]"
        }
    }
}

// MARK: - TransitionBehavior

/// Controls the CSS `transition-behavior` property.
public enum TWTTransitionBehavior: String, TWToken, Sendable, Equatable, CaseIterable {
    case normal = "transition-normal"
    case discrete = "transition-discrete"
}
