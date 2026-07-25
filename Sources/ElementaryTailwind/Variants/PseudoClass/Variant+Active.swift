import Elementary

// MARK: - Active Variant

/// Wraps a TWToken in the `active:` variant prefix.
public struct Active<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "active:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
