import Elementary

/// Controls the CSS `break-after` property.
public enum TWTBreakAfter: String, TWToken, Sendable, Equatable, CaseIterable {
    case auto = "break-after-auto"
    case avoid = "break-after-avoid"
    case all = "break-after-all"
    case avoidPage = "break-after-avoid-page"
    case page = "break-after-page"
    case left = "break-after-left"
    case right = "break-after-right"
    case column = "break-after-column"
}

/// Controls the CSS `break-before` property.
public enum TWTBreakBefore: String, TWToken, Sendable, Equatable, CaseIterable {
    case auto = "break-before-auto"
    case avoid = "break-before-avoid"
    case all = "break-before-all"
    case avoidPage = "break-before-avoid-page"
    case page = "break-before-page"
    case left = "break-before-left"
    case right = "break-before-right"
    case column = "break-before-column"
}

/// Controls the CSS `break-inside` property.
public enum TWTBreakInside: String, TWToken, Sendable, Equatable, CaseIterable {
    case auto = "break-inside-auto"
    case avoid = "break-inside-avoid"
    case avoidPage = "break-inside-avoid-page"
    case avoidColumn = "break-inside-avoid-column"
}

/// Controls the CSS `box-decoration-break` property.
public enum TWTBoxDecorationBreak: String, TWToken, Sendable, Equatable, CaseIterable {
    case slice = "box-decoration-slice"
    case clone = "box-decoration-clone"
}
