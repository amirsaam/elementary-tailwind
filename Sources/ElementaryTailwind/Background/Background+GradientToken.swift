import Elementary

/// Controls the gradient direction.
/// Accepts a custom value via `.arbitrary(...)`.
public enum TWTGradientToDirection: TWToken, Sendable, Equatable {
    case l
    case r
    case t
    case b
    case tl
    case tr
    case bl
    case br
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .l: "bg-linear-to-l"
        case .r: "bg-linear-to-r"
        case .t: "bg-linear-to-t"
        case .b: "bg-linear-to-b"
        case .tl: "bg-linear-to-tl"
        case .tr: "bg-linear-to-tr"
        case .bl: "bg-linear-to-bl"
        case .br: "bg-linear-to-br"
        case .arbitrary(let v): "bg-linear-[\(v)]"
        }
    }
}

/// Sets the `from-*` gradient stop color.
public struct TWTGradientFromColor: TWToken, Sendable, Equatable {
    public let rawValue: String
    public init(_ color: TWColor, opacity: Int? = nil) {
        if let opacity {
            rawValue = "from-\(color.rawValue)/\(opacity)"
        } else {
            rawValue = "from-\(color.rawValue)"
        }
    }
}

/// Sets the `via-*` gradient stop color.
public struct TWTGradientViaColor: TWToken, Sendable, Equatable {
    public let rawValue: String
    public init(_ color: TWColor, opacity: Int? = nil) {
        if let opacity {
            rawValue = "via-\(color.rawValue)/\(opacity)"
        } else {
            rawValue = "via-\(color.rawValue)"
        }
    }
}

/// Sets the `to-*` gradient stop color.
public struct TWTGradientToColor: TWToken, Sendable, Equatable {
    public let rawValue: String
    public init(_ color: TWColor, opacity: Int? = nil) {
        if let opacity {
            rawValue = "to-\(color.rawValue)/\(opacity)"
        } else {
            rawValue = "to-\(color.rawValue)"
        }
    }
}
