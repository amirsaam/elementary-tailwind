import Elementary

/// Controls the CSS `content` property for pseudo-elements.
public enum TWTContent: TWToken, Sendable, Equatable {
    case none
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .none: "content-none"
        case .arbitrary(let v): "content-[\(v)]"
        }
    }
}
