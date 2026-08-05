import Elementary

/// Controls the `divide-x` utility that adds vertical borders between children.
public enum TWTDivideX: TWToken, Sendable, Equatable {
    case bare
    case size(Int)
    case reverse
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .bare: "divide-x"
        case .size(let n): "divide-x-\(n)"
        case .reverse: "divide-x-reverse"
        case .arbitrary(let v): "divide-x-[\(v)]"
        }
    }
}

/// Controls the `divide-y` utility that adds horizontal borders between children.
public enum TWTDivideY: TWToken, Sendable, Equatable {
    case bare
    case size(Int)
    case reverse
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .bare: "divide-y"
        case .size(let n): "divide-y-\(n)"
        case .reverse: "divide-y-reverse"
        case .arbitrary(let v): "divide-y-[\(v)]"
        }
    }
}

/// Sets the `divide-*` border color between child elements.
public struct TWTDivideColor: TWToken, Sendable, Equatable {
    public let rawValue: String
    public init(_ color: TWColor, opacity: Int? = nil) {
        if let opacity {
            rawValue = "divide-\(color.rawValue)/\(opacity)"
        } else {
            rawValue = "divide-\(color.rawValue)"
        }
    }
}

/// Sets the `divide-*` border style between child elements.
public enum TWTDivideStyle: String, TWToken, Sendable, Equatable, CaseIterable {
    case solid = "divide-solid"
    case dashed = "divide-dashed"
    case dotted = "divide-dotted"
    case double = "divide-double"
    case hidden = "divide-hidden"
    case none = "divide-none"
}
