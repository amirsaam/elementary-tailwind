import Elementary

// MARK: - Print Variant

/// Wraps a TWToken in the `print:` variant prefix.
public struct Print<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "print:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
