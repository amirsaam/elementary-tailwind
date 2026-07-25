import Elementary

/// Controls the CSS `align-content` property.
public enum TWTAlignContent: String, TWToken, Sendable, Equatable, CaseIterable {
    case start = "content-start"
    case end = "content-end"
    case center = "content-center"
    case between = "content-between"
    case around = "content-around"
    case evenly = "content-evenly"
}

/// Controls the CSS `align-self` property.
public enum TWTAlignSelf: String, TWToken, Sendable, Equatable, CaseIterable {
    case auto = "self-auto"
    case start = "self-start"
    case end = "self-end"
    case center = "self-center"
    case baseline = "self-baseline"
    case stretch = "self-stretch"
}

/// Controls the CSS `align-items` property.
public enum TWTItems: String, TWToken, Sendable, Equatable, CaseIterable {
    case start = "items-start"
    case end = "items-end"
    case center = "items-center"
    case baseline = "items-baseline"
    case stretch = "items-stretch"
}

/// Controls the CSS `justify-content` property.
public enum TWTJustify: String, TWToken, Sendable, Equatable, CaseIterable {
    case start = "justify-start"
    case end = "justify-end"
    case center = "justify-center"
    case between = "justify-between"
    case around = "justify-around"
    case evenly = "justify-evenly"
}
