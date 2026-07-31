import Elementary

/// Controls the CSS `grid-auto-flow` property.
public enum TWTGridAutoFlow: String, TWToken, Sendable, Equatable, CaseIterable {
    case row = "grid-flow-row"
    case column = "grid-flow-col"
    case dense = "grid-flow-dense"
    case rowDense = "grid-flow-row-dense"
    case columnDense = "grid-flow-col-dense"
}

/// Controls the CSS `grid-auto-columns` property.
/// Accepts a custom value via `.arbitrary(...)` (e.g. `auto-cols-[minmax(0,2fr)]`).
public enum TWTGridAutoColumns: TWToken, Sendable, Equatable {
    case auto
    case smallest
    case smallestContent
    case largest
    case largestContent
    case fractional
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .auto: "auto-cols-auto"
        case .smallest: "auto-cols-min"
        case .smallestContent: "auto-cols-min-content"
        case .largest: "auto-cols-max"
        case .largestContent: "auto-cols-max-content"
        case .fractional: "auto-cols-fr"
        case .arbitrary(let v): "auto-cols-[\(v)]"
        }
    }
}

/// Controls the CSS `grid-auto-rows` property.
/// Accepts a custom value via `.arbitrary(...)` (e.g. `auto-rows-[minmax(0,2fr)]`).
public enum TWTGridAutoRows: TWToken, Sendable, Equatable {
    case auto
    case smallest
    case smallestContent
    case largest
    case largestContent
    case fractional
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .auto: "auto-rows-auto"
        case .smallest: "auto-rows-min"
        case .smallestContent: "auto-rows-min-content"
        case .largest: "auto-rows-max"
        case .largestContent: "auto-rows-max-content"
        case .fractional: "auto-rows-fr"
        case .arbitrary(let v): "auto-rows-[\(v)]"
        }
    }
}
