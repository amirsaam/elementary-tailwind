import Elementary

// MARK: - First Variant

/// Wraps a TWToken in the `first:` variant prefix.
public struct First<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "first:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
