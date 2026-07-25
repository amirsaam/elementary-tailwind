import Elementary

/// Controls the gradient direction.
public enum TWTGradientTo: String, TWToken, Sendable, Equatable, CaseIterable {
    case l = "bg-gradient-to-l"
    case r = "bg-gradient-to-r"
    case t = "bg-gradient-to-t"
    case b = "bg-gradient-to-b"
    case tl = "bg-gradient-to-tl"
    case tr = "bg-gradient-to-tr"
    case bl = "bg-gradient-to-bl"
    case br = "bg-gradient-to-br"
}

/// Sets the `from-*` gradient stop color.
public struct TWTGradientFrom: TWToken, Sendable, Equatable {
    public let rawValue: String
    public init(_ color: TWColor) { rawValue = "from-\(color.rawValue)" }
}

/// Sets the `via-*` gradient stop color.
public struct TWTGradientVia: TWToken, Sendable, Equatable {
    public let rawValue: String
    public init(_ color: TWColor) { rawValue = "via-\(color.rawValue)" }
}

/// Sets the `to-*` gradient stop color.
public struct TWTGradientToColor: TWToken, Sendable, Equatable {
    public let rawValue: String
    public init(_ color: TWColor) { rawValue = "to-\(color.rawValue)" }
}
