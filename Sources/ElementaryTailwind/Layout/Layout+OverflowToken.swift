import Elementary

/// Controls the CSS `overflow` property.
public enum TWTOverflow: String, TWToken, Sendable, Equatable, CaseIterable {
    case auto = "overflow-auto"
    case hidden = "overflow-hidden"
    case clip = "overflow-clip"
    case visible = "overflow-visible"
    case scroll = "overflow-scroll"
}

/// Controls the CSS `overflow-x` property.
public enum TWTOverflowX: String, TWToken, Sendable, Equatable, CaseIterable {
    case auto = "overflow-x-auto"
    case hidden = "overflow-x-hidden"
    case clip = "overflow-x-clip"
    case visible = "overflow-x-visible"
    case scroll = "overflow-x-scroll"
}

/// Controls the CSS `overflow-y` property.
public enum TWTOverflowY: String, TWToken, Sendable, Equatable, CaseIterable {
    case auto = "overflow-y-auto"
    case hidden = "overflow-y-hidden"
    case clip = "overflow-y-clip"
    case visible = "overflow-y-visible"
    case scroll = "overflow-y-scroll"
}

/// Controls the CSS `overscroll-behavior` property.
public enum TWTOverscrollBehavior: String, TWToken, Sendable, Equatable, CaseIterable {
    case auto = "overscroll-auto"
    case contain = "overscroll-contain"
    case none = "overscroll-none"
}

/// Controls the CSS `overscroll-behavior-x` property.
public enum TWTOverscrollBehaviorX: String, TWToken, Sendable, Equatable, CaseIterable {
    case auto = "overscroll-x-auto"
    case contain = "overscroll-x-contain"
    case none = "overscroll-x-none"
}

/// Controls the CSS `overscroll-behavior-y` property.
public enum TWTOverscrollBehaviorY: String, TWToken, Sendable, Equatable, CaseIterable {
    case auto = "overscroll-y-auto"
    case contain = "overscroll-y-contain"
    case none = "overscroll-y-none"
}
