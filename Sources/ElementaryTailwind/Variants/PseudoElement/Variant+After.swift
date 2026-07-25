import Elementary

// MARK: - After Variant

/// Wraps a TWToken in the `after:` variant prefix.
public struct After<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "after:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
