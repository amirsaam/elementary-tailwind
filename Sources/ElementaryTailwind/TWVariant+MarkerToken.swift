import Elementary

/// Marks an element as a named or unnamed group for `group-*` variants.
public enum TWTGroupMarker: TWToken, Sendable, Equatable {
    case bare
    case named(String)

    public var rawValue: String {
        switch self {
        case .bare: "group"
        case .named(let name): "group/\(name)"
        }
    }
}

/// Marks an element as a named or unnamed peer for `peer-*` variants.
public enum TWTPeerMarker: TWToken, Sendable, Equatable {
    case bare
    case named(String)

    public var rawValue: String {
        switch self {
        case .bare: "peer"
        case .named(let name): "peer/\(name)"
        }
    }
}

extension MarkupAttribute {
    /// Marks an element as a group so `group-*` variants on children can target it.
    /// Produces `group` or `group/<name>` classes.
    public static func group(_ value: TWTGroupMarker, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Marks an element as a peer so `peer-*` variants on siblings can target it.
    /// Produces `peer` or `peer/<name>` classes.
    public static func peer(_ value: TWTPeerMarker, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }
}
