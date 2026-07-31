import Elementary

/// Controls the CSS `vertical-align` property.
/// Accepts a custom value via `.arbitrary(...)` (e.g. `align-[4px]`).
public enum TWTVerticalAlign: TWToken, Sendable, Equatable {
    case baseline
    case sub
    case `super`
    case top
    case middle
    case bottom
    case textTop
    case textBottom
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .baseline: "align-baseline"
        case .sub: "align-sub"
        case .super: "align-super"
        case .top: "align-top"
        case .middle: "align-middle"
        case .bottom: "align-bottom"
        case .textTop: "align-text-top"
        case .textBottom: "align-text-bottom"
        case .arbitrary(let v): "align-[\(v)]"
        }
    }
}
