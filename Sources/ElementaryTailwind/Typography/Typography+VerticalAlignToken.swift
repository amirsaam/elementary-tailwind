import Elementary

/// Controls the CSS `vertical-align` property.
public enum TWTVerticalAlign: String, TWToken, Sendable, Equatable, CaseIterable {
    case baseline
    case sub = "align-sub"
    case `super` = "align-super"
    case top = "align-top"
    case middle = "align-middle"
    case bottom = "align-bottom"
    case textTop = "align-text-top"
    case textBottom = "align-text-bottom"
}
