import Elementary

// MARK: - Even Variant

/// Wraps a TWToken in the `even:` variant prefix.
public struct Even<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "even:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
