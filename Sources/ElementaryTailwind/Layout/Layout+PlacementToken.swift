import Elementary

/// Controls the CSS `flex-basis` property.
public enum TWTFlexBasis: TWToken, Sendable, Equatable {
    case value(Int)
    case fraction(String)
    case auto
    case full
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .value(let n): "basis-\(n)"
        case .fraction(let f): "basis-\(f)"
        case .auto: "basis-auto"
        case .full: "basis-full"
        case .arbitrary(let v): "basis-[\(v)]"
        }
    }
}

/// Controls the CSS `justify-items` property.
public enum TWTJustifyItems: String, TWToken, Sendable, Equatable, CaseIterable {
    case start = "justify-items-start"
    case end = "justify-items-end"
    case center = "justify-items-center"
    case stretch = "justify-items-stretch"
}

/// Controls the CSS `justify-self` property.
public enum TWTJustifySelf: String, TWToken, Sendable, Equatable, CaseIterable {
    case auto = "justify-self-auto"
    case start = "justify-self-start"
    case end = "justify-self-end"
    case center = "justify-self-center"
    case stretch = "justify-self-stretch"
}

/// Controls the CSS `place-content` property.
public enum TWTPlaceContent: String, TWToken, Sendable, Equatable, CaseIterable {
    case center = "place-content-center"
    case start = "place-content-start"
    case end = "place-content-end"
    case between = "place-content-between"
    case around = "place-content-around"
    case evenly = "place-content-evenly"
    case stretch = "place-content-stretch"
}

/// Controls the CSS `place-items` property.
public enum TWTPlaceItems: String, TWToken, Sendable, Equatable, CaseIterable {
    case start = "place-items-start"
    case end = "place-items-end"
    case center = "place-items-center"
    case stretch = "place-items-stretch"
}

/// Controls the CSS `place-self` property.
public enum TWTPlaceSelf: String, TWToken, Sendable, Equatable, CaseIterable {
    case auto = "place-self-auto"
    case start = "place-self-start"
    case end = "place-self-end"
    case center = "place-self-center"
    case stretch = "place-self-stretch"
}
