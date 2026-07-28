import Elementary

/// Controls the CSS `columns` property.
public enum TWTColumns: TWToken, Sendable, Equatable {
    case number(Int)
    case xxxs
    case xxs
    case xs
    case sm
    case md
    case lg
    case xl
    case xxl
    case xxxl
    case fourxl
    case fivexl
    case sixxl
    case sevenxl
    case none
    case auto

    public var rawValue: String {
        switch self {
        case .number(let n): "columns-\(n)"
        case .xxxs: "columns-3xs"
        case .xxs: "columns-2xs"
        case .xs: "columns-xs"
        case .sm: "columns-sm"
        case .md: "columns-md"
        case .lg: "columns-lg"
        case .xl: "columns-xl"
        case .xxl: "columns-2xl"
        case .xxxl: "columns-3xl"
        case .fourxl: "columns-4xl"
        case .fivexl: "columns-5xl"
        case .sixxl: "columns-6xl"
        case .sevenxl: "columns-7xl"
        case .none: "columns-none"
        case .auto: "columns-auto"
        }
    }
}
