import Elementary

// MARK: - Marker Variant

/// Wraps a TWToken in the `marker:` variant prefix.
public struct Marker<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "marker:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
