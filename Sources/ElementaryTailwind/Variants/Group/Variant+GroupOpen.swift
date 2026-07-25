import Elementary

// MARK: - GroupOpen Variant

/// Wraps a TWToken in the `group-open:` variant prefix.
public struct GroupOpen<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "group-open:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
