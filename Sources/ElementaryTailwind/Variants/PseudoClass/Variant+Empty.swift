import Elementary

// MARK: - Empty Variant

/// Wraps a TWToken in the `empty:` variant prefix.
public struct Empty<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "empty:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
