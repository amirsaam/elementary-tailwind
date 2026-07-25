import Elementary

// MARK: - GroupVisited Variant

/// Wraps a TWToken in the `group-visited:` variant prefix.
public struct GroupVisited<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "group-visited:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
