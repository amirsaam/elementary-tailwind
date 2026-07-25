import Elementary

/// Controls the CSS `border-color` property.
public struct TWTBorderColor: TWToken, Sendable, Equatable {
    public let rawValue: String
    public init(_ color: TWColor) { rawValue = "border-\(color.rawValue)" }
}

/// Controls the CSS `border-radius` property.
public enum TWTBorderRadius: String, TWToken, Sendable, Equatable, CaseIterable {
    case none = "rounded-none"
    case sm = "rounded-sm"
    case md = "rounded"
    case lg = "rounded-lg"
    case xl = "rounded-xl"
    case xxl = "rounded-2xl"
    case xxxl = "rounded-3xl"
    case full = "rounded-full"
}

/// Controls the CSS `border-style` property.
public enum TWTBorderStyle: String, TWToken, Sendable, Equatable, CaseIterable {
    case solid = "border-solid"
    case dashed = "border-dashed"
    case dotted = "border-dotted"
    case double = "border-double"
    case hidden = "border-hidden"
    case none = "border-none"
}

/// Controls the CSS `border-width` property.
public enum TWTBorderWidth: TWToken, Sendable, Equatable {
    case size(Int)
    case x(Int)
    case y(Int)
    case t(Int)
    case r(Int)
    case b(Int)
    case l(Int)
    case s(Int)
    case e(Int)

    public var rawValue: String {
        switch self {
        case .size(let n): "border-\(n)"
        case .x(let n): "border-x-\(n)"
        case .y(let n): "border-y-\(n)"
        case .t(let n): "border-t-\(n)"
        case .r(let n): "border-r-\(n)"
        case .b(let n): "border-b-\(n)"
        case .l(let n): "border-l-\(n)"
        case .s(let n): "border-s-\(n)"
        case .e(let n): "border-e-\(n)"
        }
    }
}
