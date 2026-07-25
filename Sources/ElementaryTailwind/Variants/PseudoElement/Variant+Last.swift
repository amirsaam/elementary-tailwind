import Elementary

// MARK: - Last Variant

/// Wraps a TWToken in the `last:` variant prefix.
public struct Last<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "last:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
