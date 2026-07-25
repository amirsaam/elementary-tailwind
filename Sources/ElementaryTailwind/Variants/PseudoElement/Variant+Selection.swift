import Elementary

// MARK: - Selection Variant

/// Wraps a TWToken in the `selection:` variant prefix.
public struct Selection<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "selection:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
