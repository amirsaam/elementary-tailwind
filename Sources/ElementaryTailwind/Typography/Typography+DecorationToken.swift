import Elementary

/// Controls the CSS `text-decoration-color` property.
public struct TWTTextColorDecoration: TWToken, Sendable, Equatable {
    public let rawValue: String
    public init(_ color: TWColor, opacity: Int? = nil) {
        if let opacity {
            rawValue = "decoration-\(color.rawValue)/\(opacity)"
        } else {
            rawValue = "decoration-\(color.rawValue)"
        }
    }
}

/// Controls the CSS `text-decoration-style` property.
public enum TWTTextDecorationStyle: String, TWToken, Sendable, Equatable, CaseIterable {
    case solid = "decoration-solid"
    case double = "decoration-double"
    case dotted = "decoration-dotted"
    case dashed = "decoration-dashed"
    case wavy = "decoration-wavy"
}

/// Controls the CSS `text-decoration-thickness` property.
public enum TWTTextDecorationThickness: TWToken, Sendable, Equatable {
    case value(Int)
    case arbitrary(String)
    case auto
    case fromFont
    case thin
    case medium
    case thick
    case heavier
    case heaviest

    public var rawValue: String {
        switch self {
        case .value(let n): "decoration-\(n)"
        case .arbitrary(let v): "decoration-[\(v)]"
        case .auto: "decoration-auto"
        case .fromFont: "decoration-from-font"
        case .thin: "decoration-0"
        case .medium: "decoration-1"
        case .thick: "decoration-2"
        case .heavier: "decoration-4"
        case .heaviest: "decoration-8"
        }
    }
}

/// Controls the CSS `text-underline-offset` property.
public enum TWTTextUnderlineOffset: TWToken, Sendable, Equatable {
    case value(Int)
    case arbitrary(String)
    case auto
    case small
    case medium
    case large
    case xlarge

    public var rawValue: String {
        switch self {
        case .value(let n): "underline-offset-\(n)"
        case .arbitrary(let v): "underline-offset-[\(v)]"
        case .auto: "underline-offset-auto"
        case .small: "underline-offset-1"
        case .medium: "underline-offset-2"
        case .large: "underline-offset-4"
        case .xlarge: "underline-offset-8"
        }
    }
}
