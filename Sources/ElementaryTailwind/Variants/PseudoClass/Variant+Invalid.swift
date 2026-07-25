import Elementary

// MARK: - Invalid Variant

/// Wraps a TWToken in the `invalid:` variant prefix.
public struct Invalid<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "invalid:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
