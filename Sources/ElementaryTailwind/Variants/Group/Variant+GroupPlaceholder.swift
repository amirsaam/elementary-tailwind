import Elementary

// MARK: - GroupPlaceholder Variant

/// Wraps a TWToken in the `group-placeholder:` variant prefix.
public struct GroupPlaceholder<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "group-placeholder:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
