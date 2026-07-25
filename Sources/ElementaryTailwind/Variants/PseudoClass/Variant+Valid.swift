import Elementary

// MARK: - Valid Variant

/// Wraps a TWToken in the `valid:` variant prefix.
public struct Valid<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "valid:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
