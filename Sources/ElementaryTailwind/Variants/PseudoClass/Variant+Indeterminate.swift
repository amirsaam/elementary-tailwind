import Elementary

// MARK: - Indeterminate Variant

/// Wraps a TWToken in the `indeterminate:` variant prefix.
public struct Indeterminate<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "indeterminate:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
