import Elementary

// MARK: - Visited Variant

/// Wraps a TWToken in the `visited:` variant prefix.
public struct Visited<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "visited:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
