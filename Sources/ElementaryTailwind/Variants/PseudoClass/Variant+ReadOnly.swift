import Elementary

// MARK: - ReadOnly Variant

/// Wraps a TWToken in the `read-only:` variant prefix.
public struct ReadOnly<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "read-only:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
