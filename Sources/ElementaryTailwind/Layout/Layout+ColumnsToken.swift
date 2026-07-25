import Elementary

/// Controls the CSS `columns` property.
public enum TWTColumns: TWToken, Sendable, Equatable {
    case number(Int)
    case xs
    case sm
    case md
    case lg
    case xl
    case xxl
    case none
    case auto

    public var rawValue: String {
        switch self {
        case .number(let n): "columns-\(n)"
        case .xs: "columns-xs"
        case .sm: "columns-sm"
        case .md: "columns-md"
        case .lg: "columns-lg"
        case .xl: "columns-xl"
        case .xxl: "columns-2xl"
        case .none: "columns-none"
        case .auto: "columns-auto"
        }
    }
}
