import Elementary
import Foundation

/// Controls the CSS `grid-template-columns` property.
public enum TWTGridTemplateColumns: TWToken, Sendable, Equatable {
    case value(Int)

    public var rawValue: String {
        switch self {
        case .value(let n): "grid-cols-\(n)"
        }
    }
}

/// Controls the CSS `grid-template-rows` property.
public enum TWTGridTemplateRows: TWToken, Sendable, Equatable {
    case value(Int)

    public var rawValue: String {
        switch self {
        case .value(let n): "grid-rows-\(n)"
        }
    }
}

/// Controls the CSS `grid-template-areas` property.
public enum TWTGridTemplateAreas: TWToken, Sendable, Equatable {
    case none
    case areas([String])

    public var rawValue: String {
        switch self {
        case .none:
            return "grid-areas-none"
        case .areas(let areas):
            let normalized = areas.map { ($0 as NSString).replacingOccurrences(of: " ", with: "_") }
                .joined(separator: " ")
            return "grid-areas-\(normalized)"
        }
    }
}
