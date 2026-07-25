import Elementary

// MARK: - PeerVisited Variant

/// Wraps a TWToken in the `peer-visited:` variant prefix.
public struct PeerVisited<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "peer-visited:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
