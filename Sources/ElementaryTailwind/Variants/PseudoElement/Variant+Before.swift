import Elementary

// MARK: - Before Variant

/// Wraps a TWToken in the `before:` variant prefix.
public struct Before<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "before:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
