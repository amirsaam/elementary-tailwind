import Elementary

/// Controls the CSS `flex` property.
public enum TWTFlex: String, TWToken, Sendable, Equatable, CaseIterable {
    case one = "flex-1"
    case auto = "flex-auto"
    case initial = "flex-initial"
    case none = "flex-none"
}

/// Controls the CSS `flex-direction` property.
public enum TWTFlexDirection: String, TWToken, Sendable, Equatable, CaseIterable {
    case row = "flex-row"
    case rowReverse = "flex-row-reverse"
    case column = "flex-col"
    case columnReverse = "flex-col-reverse"
}

/// Controls the CSS `flex-grow` property.
public enum TWTFlexGrow: String, TWToken, Sendable, Equatable, CaseIterable {
    case grow = "grow"
    case grow0 = "grow-0"
}

/// Controls the CSS `flex-shrink` property.
public enum TWTFlexShrink: String, TWToken, Sendable, Equatable, CaseIterable {
    case shrink = "shrink"
    case shrink0 = "shrink-0"
}

/// Controls the CSS `flex-wrap` property.
public enum TWTFlexWrap: String, TWToken, Sendable, Equatable, CaseIterable {
    case wrap = "flex-wrap"
    case wrapReverse = "flex-wrap-reverse"
    case nowrap = "flex-nowrap"
}
