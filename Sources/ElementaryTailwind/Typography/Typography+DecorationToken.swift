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
public enum TWTTextDecorationThickness: String, TWToken, Sendable, Equatable, CaseIterable {
    case auto = "decoration-auto"
    case fromFont = "decoration-from-font"
    case thin = "decoration-0"
    case medium = "decoration-1"
    case thick = "decoration-2"
    case heavier = "decoration-4"
    case heaviest = "decoration-8"
}

/// Controls the CSS `text-underline-offset` property.
public enum TWTTextUnderlineOffset: String, TWToken, Sendable, Equatable, CaseIterable {
    case auto = "underline-offset-auto"
    case small = "underline-offset-1"
    case medium = "underline-offset-2"
    case large = "underline-offset-4"
    case xlarge = "underline-offset-8"
}
